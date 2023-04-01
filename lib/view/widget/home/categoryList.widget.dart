import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/home/categoryList/addCategory.widget.dart';
import 'package:ecommerce/view/widget/home/categoryList/gridContent.widget.dart';
import 'package:flutter/material.dart';

class categoryList extends StatelessWidget {
  const categoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: app_colors.thirdColors,
                title: const Text(
                  "Choose Category",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: app_colors.text),
                ),
                content: gridContent(),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: addCategory(),
                  ),
                ],
              ),
            ),
        icon: Icon(
          Icons.category_outlined,
          color: app_colors.text,
        ));
  }
}
