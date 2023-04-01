import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 2 - 20,
            onPressed: () => Navigator.of(context).pop(),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              "Cancel",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            textColor: app_colors.button,
          ),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 2 - 20,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
                side: BorderSide(color: app_colors.button)),
            onPressed: () => Navigator.of(context).pop(),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              "Create Category",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            color: app_colors.button,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
