import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/constatnt/images.dart';
import 'package:ecommerce/view/widget/home/CompletedTasks.widget.dart';
import 'package:ecommerce/view/widget/home/todayTasks.widget.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> days = ["Tommorow", "Yesterday", "Today"];

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.only(
                left: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: app_colors.thirdColors,
              ),
              child: DropdownButton<String>(
                value: "Today",

                underline: Container(
                  color: app_colors.thirdColors,
                ),

                dropdownColor: app_colors.thirdColors, //<-- SEE HERE
                onChanged: (String? newValue) {},
                items: <String>[...days]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
              ),
            ),
            todayTasks(
              len: 4,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Completed",
              style: TextStyle(
                  color: app_colors.button,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            completedTasks(),
          ],
        ),
      ),
    );
  }
}
