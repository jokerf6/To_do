import 'package:flutter/material.dart';

double currentDayScroll(double screenWidth) {
  int day = 1;
  int width = 60;
  int boxNum = (screenWidth / 60).toInt();

  return screenWidth * (day / boxNum) - (screenWidth / 2);
}
