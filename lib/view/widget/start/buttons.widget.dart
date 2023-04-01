import 'package:ecommerce/controller/onBoarding.controller.dart';
import 'package:ecommerce/controller/start.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<startImp>(
      builder: (controller) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 50,
            child: MaterialButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              onPressed: () => controller.toLogin(),
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              color: app_colors.button,
              textColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 60,
            child: MaterialButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: app_colors.button)),
              onPressed: () => controller.toRegister(),
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "CREATE ACCOUNT",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              color: app_colors.primaryColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
