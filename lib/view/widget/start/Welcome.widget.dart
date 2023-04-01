import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to UpTodo",
            style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: app_colors.text),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Please login to your account or create \n new account to continue",
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 1.5,
                fontSize: 16,
                color: app_colors.text.withOpacity(0.66)),
          ),
        ],
      ),
    );
  }
}
