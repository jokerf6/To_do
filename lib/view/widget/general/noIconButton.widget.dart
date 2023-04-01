import 'dart:ffi';

import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class noIconInput extends StatelessWidget {
  final String text;
  final String label;
  final bool Secret;
  final Color color;
  const noIconInput({
    super.key,
    required this.text,
    required this.Secret,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: app_colors.text),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: Secret,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: color,
            hintStyle: TextStyle(color: app_colors.secondText),
            filled: true,
            hintText: text,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: app_colors.secondColors, width: 1)),
          ),
        ),
      ],
    );
  }
}
