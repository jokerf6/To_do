import 'package:ecommerce/controller/home.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class todayTasks extends StatelessWidget {
  final int len;
  const todayTasks({super.key, required this.len});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: GetBuilder<homeImp>(
          builder: (controller) => ListView.builder(
            itemCount: len,
            itemBuilder: (context, index) => InkWell(
              onTap: () => controller.toEdit(),
              child: Card(
                color: app_colors.thirdColors,
                child: ListTile(
                  leading: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: app_colors.text)),
                  ),
                  title: Text(
                    "Do Math Home Work",
                    style: TextStyle(color: app_colors.text.withOpacity(0.87)),
                  ),
                  subtitle: Text(
                    "Today At 08:15",
                    style: TextStyle(color: Color(0xffAFAFAF)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.home,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: app_colors.button)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag_outlined,
                              size: 16,
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
                      ),
                    ],
                  ),
                  //           trailing: Row(children: []),
                ),
              ),
            ),
          ),
        ));
  }
}
