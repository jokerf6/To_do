import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:ecommerce/controller/home.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/constatnt/images.dart';
import 'package:ecommerce/view/screen/calender.screen.dart';
import 'package:ecommerce/view/widget/home/addTask.widget.dart';
import 'package:ecommerce/view/widget/home/nav/focus.widget.dart';
import 'package:ecommerce/view/widget/home/nav/home.widget.dart';
import 'package:ecommerce/view/widget/home/nav/profile.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeNav extends StatelessWidget {
  const homeNav({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> homePages = [
      homePage(),
      calender(),
      focus(),
      profile(),
    ];
    Get.put(homeImp());
    return GetBuilder<homeImp>(
      builder: (controller) => Scaffold(
          bottomNavigationBar: ConvexAppBar(
            initialActiveIndex: controller.currentPage,
            color: app_colors.text,
            backgroundColor: app_colors.thirdColors,
            height: 80,
            style: TabStyle.titled,
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.calendar_month_sharp, title: 'Calender'),
              TabItem(
                  icon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => FractionallySizedBox(
                            heightFactor: 1.3, child: addTaskt())),
                  ),
                  title: 'Add'),
              TabItem(icon: Icons.timelapse_rounded, title: 'Focus'),
              TabItem(icon: Icons.person, title: 'Profile'),
            ],
            onTap: (int i) {
              if (i != 2) {
                if (i > 2) i--;
                controller.onPageChanged(i);
              }
            },
          ),
          body: homePages[controller.currentPage]),
    );
  }
}
