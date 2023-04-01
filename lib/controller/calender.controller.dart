import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class calender extends GetxController {
  nextYear();
  preYear();

  nextMonth();
  preMonth();
  changeDay(int val);
  int currentMonth = DateTime.now().month;
  int currentYear = DateTime.now().year;

  int currentDay = DateTime.now().day;
}

class calenderImp extends calender {
  @override
  changeDay(int val) {
    // TODO: implement changeDay
    currentDay = val;
    update();
    Get.delete<calenderImp>();
  }

  @override
  nextMonth() {
    // TODO: implement nextMonth
    currentMonth++;
    if (currentMonth >= 12) {
      nextYear();
      currentMonth = 0;
    }
    update();
  }

  @override
  preMonth() {
    // TODO: implement nextMonth
    currentMonth--;
    if (currentMonth < 0) {
      preYear();
      currentMonth = 11;
    }
    update();
  }

  @override
  // TODO: implement onStart
  InternalFinalCallback<void> get onStart => super.onStart;
  @override
  nextYear() {
    currentYear++;
    // TODO: implement nextYear
    update();
  }

  @override
  // TODO: implement initialized
  bool get initialized => true;
  @override
  preYear() {
    currentYear--;
    // TODO: implement preYear

    update();
  }
}
