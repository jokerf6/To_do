import 'package:ecommerce/controller/home.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addCategory extends StatelessWidget {
  const addCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homeImp>(
      builder: (controller) => MaterialButton(
        minWidth: double.infinity,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: app_colors.button)),
        onPressed: () => controller.toNew(),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Text(
          "Add Category",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        color: app_colors.button,
        textColor: Colors.white,
      ),
    );
  }
}
