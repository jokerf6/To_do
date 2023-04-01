import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';

class editTask extends StatelessWidget {
  const editTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: app_colors.fill,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 19,
                      color: app_colors.text.withOpacity(0.87),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Do Math Homework",
                              style: TextStyle(
                                  color: app_colors.text.withOpacity(0.87),
                                  fontSize: 18),
                            ),
                            Icon(
                              Icons.edit,
                              color: app_colors.text.withOpacity(0.87),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Do chapter 2 to 5 for next week",
                          style: TextStyle(
                              color: app_colors.thirdColors, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: app_colors.text.withOpacity(0.87),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Task Time :",
                            style: TextStyle(
                                color: app_colors.text.withOpacity(0.87),
                                fontSize: 16),
                          )
                        ],
                      ),
                      MaterialButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        onPressed: () => null,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                          "Today At 16:45",
                          style: TextStyle(fontSize: 13),
                        ),
                        color: app_colors.thirdColors,
                        textColor: Colors.white.withOpacity(0.87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.category_outlined,
                            color: app_colors.text.withOpacity(0.87),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Task Catehory :",
                            style: TextStyle(
                                color: app_colors.text.withOpacity(0.87),
                                fontSize: 16),
                          )
                        ],
                      ),
                      MaterialButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        onPressed: () => null,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: app_colors.text.withOpacity(0.87),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "University",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        color: app_colors.thirdColors,
                        textColor: Colors.white.withOpacity(0.87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.flag_outlined,
                            color: app_colors.text.withOpacity(0.87),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Task Priority :",
                            style: TextStyle(
                                color: app_colors.text.withOpacity(0.87),
                                fontSize: 16),
                          )
                        ],
                      ),
                      MaterialButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        onPressed: () => null,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.flag_outlined,
                              color: app_colors.text.withOpacity(0.87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        color: app_colors.thirdColors,
                        textColor: Colors.white.withOpacity(0.87),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Delete Task",
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: app_colors.button)),
              onPressed: () => null,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Edit Task",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              color: app_colors.button,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
