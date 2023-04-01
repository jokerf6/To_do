import 'package:ecommerce/controller/calender.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/function/currentDayScroll.dart';
import 'package:ecommerce/core/function/datyColor.dart';
import 'package:ecommerce/core/function/monthDays.dart';
import 'package:ecommerce/data/static/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class dates extends StatelessWidget {
  const dates({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<calenderImp>(
      builder: (controller) => Container(
        color: app_colors.thirdColors,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => controller.preMonth(),
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 15,
                        color: app_colors.text.withOpacity(0.87),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Monthes[controller.currentMonth].toUpperCase(),
                        style: TextStyle(
                            color: app_colors.text.withOpacity(0.87),
                            fontSize: 17),
                      ),
                      Text(
                        controller.currentYear.toString(),
                        style: TextStyle(color: app_colors.thirdText),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () => controller.nextMonth(),
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: app_colors.text.withOpacity(0.87),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                semanticChildCount: 10,
                controller: ScrollController(
                    initialScrollOffset:
                        currentDayScroll(MediaQuery.of(context).size.width)),
                scrollDirection: Axis.horizontal,
                itemCount: getDaysInMonth(
                    controller.currentYear, controller.currentMonth),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    //  color: app_colors.forthColors,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => controller.changeDay(index + 1),
                        child: Container(
                          width: 52,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: controller.currentDay == index + 1
                                ? app_colors.button
                                : app_colors.forthColors,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                  DateFormat('EEE')
                                      .format(DateTime(controller.currentYear,
                                          controller.currentMonth, index + 1))
                                      .toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: dayColor(DateFormat('EEE')
                                              .format(DateTime(
                                                  controller.currentYear,
                                                  controller.currentMonth,
                                                  index + 1))
                                              .toUpperCase())
                                          ? Colors.red
                                          : app_colors.text)),
                              Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    color: app_colors.text.withOpacity(0.87),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
