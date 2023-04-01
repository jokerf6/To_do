import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/general/input.widget.dart';
import 'package:ecommerce/view/widget/general/noIconButton.widget.dart';
import 'package:ecommerce/view/widget/home/icons.widget.dart';
import 'package:flutter/material.dart';

class addTaskt extends StatelessWidget {
  const addTaskt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: app_colors.thirdColors,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add Task",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: app_colors.text),
          ),
          noIconInput(
            text: "Type Your Task",
            Secret: false,
            label: "",
            color: app_colors.thirdColors,
          ),
          noIconInput(
            text: "Type Discriptoin to Task",
            Secret: false,
            label: "",
            color: app_colors.thirdColors,
          ),
          icons(),
        ],
      ),
    );
  }
}
