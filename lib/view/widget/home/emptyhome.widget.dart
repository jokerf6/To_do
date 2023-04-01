import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/constatnt/images.dart';
import 'package:flutter/material.dart';

class emptyHome extends StatelessWidget {
  const emptyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home,
                color: app_colors.text,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: app_colors.text,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(images.profile),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(images.home),
                Text(
                  "What do you want to do today?",
                  style: TextStyle(
                      color: app_colors.text,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tap Add to add your tasks",
                  style: TextStyle(
                      color: app_colors.text,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                MaterialButton(
                  onPressed: () => Navigator.of(context).push(
                    showPicker(
                      value: Time(hour: 5, minute: 30),
                      onChange: (p0) {},
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
