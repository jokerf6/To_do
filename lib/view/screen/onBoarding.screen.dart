import 'dart:ffi';

import 'package:ecommerce/controller/onBoarding.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/data/static/static.dart';
import 'package:ecommerce/view/widget/onBorading/customButton.widget.dart';
import 'package:ecommerce/view/widget/onBorading/dotController.widget.dart';
import 'package:ecommerce/view/widget/onBorading/slider.widger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  //const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp());

    return Scaffold(
        body: Container(
      color: app_colors.primaryColor,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder<onBoardingControllerImp>(
                builder: (controller) => InkWell(
                  onTap: () => controller.toStart(),
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: app_colors.text.withOpacity(0.44)),
                  ),
                ),
              ),
              const slider_onBoarding(),
              const customButton_onBoarding(),
            ],
          ),
        ),
      ),
    ));
  }
}
/*

      */