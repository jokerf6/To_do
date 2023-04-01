import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class gridContent extends StatelessWidget {
  const gridContent({super.key});

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
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 3 / 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.home,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  );
                }),
          )
        ]));
  }
}
