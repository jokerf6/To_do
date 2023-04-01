import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/home/nav/profile/info.widget.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            info(),
            SizedBox(
              height: 20,
            ),
            Text("Account",
                style: TextStyle(
                  color: app_colors.thirdText,
                )),
            Container(
              height: 190,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outlined,
                              color: app_colors.text.withOpacity(0.87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Change account name",
                              style: TextStyle(
                                  color: app_colors.text.withOpacity(0.87),
                                  fontSize: 16),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                          color: app_colors.text.withOpacity(0.87),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Log out",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
