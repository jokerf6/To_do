import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/data/static/categoryColor.static.dart';
import 'package:ecommerce/view/widget/category/iconLibrary.widget.dart';
import 'package:ecommerce/view/widget/category/listIcons.widget.dart';
import 'package:ecommerce/view/widget/general/input.widget.dart';
import 'package:ecommerce/view/widget/general/noIconButton.widget.dart';
import 'package:ecommerce/view/widget/category/buttons.widget.dart';
import 'package:flutter/material.dart';

class newCategory extends StatelessWidget {
  const newCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 40, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create new category",
                  style: TextStyle(fontSize: 21, color: app_colors.text),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: noIconInput(
                      text: "Add Your Category",
                      Secret: false,
                      color: app_colors.fill,
                      label: "Category name:"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Category Icon:",
                  style: TextStyle(fontSize: 15, color: app_colors.text),
                ),
                SizedBox(
                  height: 10,
                ),
                iconLibrary(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Category Color:",
                  style: TextStyle(fontSize: 15, color: app_colors.text),
                ),
                listIcons(),
                Text(
                  "Icon Color:",
                  style: TextStyle(fontSize: 15, color: app_colors.text),
                ),
                listIcons(),
              ],
            ),
            buttons(),
          ],
        ),
      )),
    );
  }
}
