import 'package:ecommerce/controller/login.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class button extends StatelessWidget {
  final String text;
  const button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GetBuilder<loginImp>(
        builder: (controller) => MaterialButton(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              side: BorderSide(color: app_colors.button)),
          onPressed: () => controller.toHome(),
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          color: app_colors.button,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
