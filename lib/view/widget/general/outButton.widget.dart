import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/core/constatnt/images.dart';
import 'package:flutter/material.dart';

class outButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final bool image;
  const outButton(
      {super.key, required this.text, required this.icon, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: app_colors.button)),
        onPressed: () => null,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image ? Image.asset(images.google) : icon,
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        color: app_colors.primaryColor,
        textColor: Colors.white,
      ),
    );
  }
}
