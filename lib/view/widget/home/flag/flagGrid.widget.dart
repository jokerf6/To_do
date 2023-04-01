import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class flagContent extends StatelessWidget {
  const flagContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: Column(children: [
          Divider(
            thickness: 1,
            color: app_colors.secondText,
          ),
          Container(
            // Specify some width
            height: 214,
            width: MediaQuery.of(context).size.width * .7,

            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 60,
                  childAspectRatio: 3 / 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: index == 0
                            ? app_colors.button
                            : app_colors.forthColors,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.flag_outlined,
                          color: app_colors.text.withOpacity(0.87),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 13,
                              color: app_colors.text.withOpacity(0.87)),
                        )
                      ],
                    ),
                  );
                }),
          )
        ]));
  }
}
