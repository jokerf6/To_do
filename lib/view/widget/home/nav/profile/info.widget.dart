import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/constatnt/images.dart';
import 'package:flutter/material.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Profile",
            style: TextStyle(
                color: app_colors.text.withOpacity(0.87), fontSize: 21),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(images.profile),
            radius: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Fahd Hakem",
            style: TextStyle(
                color: app_colors.text.withOpacity(0.87), fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: app_colors.thirdColors,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width / 2 - 30,
                child: Text(
                  "10 Tasks left",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: app_colors.text.withOpacity(0.87), fontSize: 16),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: app_colors.thirdColors,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width / 2 - 30,
                child: Text(
                  "4 Tasks done",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: app_colors.text.withOpacity(0.87), fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
