import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class todayButtons extends StatelessWidget {
  const todayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 2 - 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () => Navigator.of(context).pop(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              "Today",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            color: app_colors.button,
            textColor: app_colors.text,
          ),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 2 - 50,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
                side: BorderSide(color: app_colors.button)),
            onPressed: () => Navigator.of(context).pop(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              "Completed",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
