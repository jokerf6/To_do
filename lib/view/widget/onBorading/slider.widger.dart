import 'package:ecommerce/controller/onBoarding.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/data/static/static.dart';
import 'package:ecommerce/view/widget/onBorading/dotController.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class slider_onBoarding extends GetView<onBoardingControllerImp> {
  const slider_onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) => {
          controller.onPageChanged(val),
        },
        physics: BouncingScrollPhysics(),
        itemCount: OnBoardingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset(
              OnBoardingList[index].image!,
              height: 250,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 80),
            const dotController_onBoarding(),
            const SizedBox(height: 30),
            Text(
              OnBoardingList[index].title.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 2,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: app_colors.text),
            ),
            const SizedBox(height: 30),
            Text(
              OnBoardingList[index].body.toString(),
              textAlign: TextAlign.center,
              style:
                  TextStyle(height: 1.5, fontSize: 14, color: app_colors.text),
            ),
          ],
        ),
      ),
    );
  }
}
