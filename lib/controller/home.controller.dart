import 'dart:io';

import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class home extends GetxController {
  toNew();
  toEdit();
  onPageChanged(int index);
}

class homeImp extends home {
  int currentPage = 0;
  late PageController pageController;

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void toNew() {
    Get.toNamed(AppRoute.newCategory);
  }

  @override
  void toEdit() {
    Get.toNamed(AppRoute.editTask);
  }
}
