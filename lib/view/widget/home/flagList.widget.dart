import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/home/categoryList/addCategory.widget.dart';
import 'package:ecommerce/view/widget/home/categoryList/gridContent.widget.dart';
import 'package:ecommerce/view/widget/home/flag/flagGrid.widget.dart';
import 'package:ecommerce/view/widget/home/flag/okAndCancel.widget.dart';
import 'package:flutter/material.dart';

class flagList extends StatelessWidget {
  const flagList({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: app_colors.thirdColors,
                title: const Text(
                  "Task Priority",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: app_colors.text),
                ),
                content: flagContent(),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: okAndCancel(),
                  ),
                ],
              ),
            ),
        icon: Icon(
          Icons.flag_outlined,
          color: app_colors.text,
        ));
  }
}
