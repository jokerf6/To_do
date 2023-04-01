import 'package:ecommerce/controller/calender.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/category/todayButtons.widget.dart';
import 'package:ecommerce/view/widget/home/nav/calender/dates.widget.dart';
import 'package:ecommerce/view/widget/home/todayTasks.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class calender extends StatelessWidget {
  const calender({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(calenderImp());

    return SafeArea(
        child: Column(
      children: [
        Text(
          "Calender",
          style:
              TextStyle(fontSize: 21, color: app_colors.text.withOpacity(0.87)),
        ),
        SizedBox(
          height: 20,
        ),
        dates(),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: app_colors.thirdColors,
                width: double.infinity,
                child: todayButtons(),
              )
            ],
          ),
        ),
        todayTasks(
          len: 3,
        ),
      ],
    ));
  }
}
