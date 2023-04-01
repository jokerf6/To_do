import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/roots.dart';
import 'package:ecommerce/view/screen/onBoarding.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          subtitle1: TextStyle(color: app_colors.text),
        ),
        scaffoldBackgroundColor: app_colors.primaryColor, //<-- SEE HERE
        primaryColor: app_colors.button,

        fontFamily: "inter",
      ),
      home: OnBoarding(),
      routes: routes,
    );
  }
}
