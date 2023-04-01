import 'package:ecommerce/controller/start.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/start/Welcome.widget.dart';
import 'package:ecommerce/view/widget/start/buttons.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(startImp());
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 15, bottom: 20),
              child: Row(
                children: [
                  GetBuilder<startImp>(
                    builder: (controller) => IconButton(
                        onPressed: () => controller.back(),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: app_colors.text,
                        )),
                  ),
                ],
              ),
            ),
            welcome(),
            Spacer(
              flex: 2,
            ),
            buttons(),
          ],
        ),
      )),
    );
  }
}
