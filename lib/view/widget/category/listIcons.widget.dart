import 'package:ecommerce/data/static/categoryColor.static.dart';
import 'package:flutter/material.dart';

class listIcons extends StatelessWidget {
  const listIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        itemCount: categoryColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(categoryColorList[index].color!),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
