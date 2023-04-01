import 'package:ecommerce/controller/onBoarding.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customButton_onBoarding extends StatelessWidget {
  const customButton_onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<onBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              controller.back();
            },
            child: Text(
              "BACK",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            color: app_colors.primaryColor,
            textColor: Colors.white.withOpacity(0.44),
          ),
          Container(
            width: controller.currentPage != 2 ? 100 : 150,
            child: MaterialButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              onPressed: () {
                controller.next();
              },
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                controller.currentPage != 2 ? "NEXT" : "GET STARTED",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              color: app_colors.button,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
