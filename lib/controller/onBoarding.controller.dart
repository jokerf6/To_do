import 'dart:io';

import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:ecommerce/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class onBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  toStart();
  back();
}

class onBoardingControllerImp extends onBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    currentPage <= OnBoardingList.length - 1
        ? pageController.animateToPage(currentPage,
            duration: Duration(milliseconds: 900), curve: Curves.easeInOut)
        : Get.toNamed(AppRoute.start);
    ;
    // TODO: implement next
  }

  @override
  back() {
    currentPage--;
    currentPage > -1
        ? pageController.animateToPage(currentPage,
            duration: Duration(milliseconds: 900), curve: Curves.easeInOut)
        : exit(0);
    ;
    // TODO: implement next
  }

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
  void toStart() {
    Get.toNamed(AppRoute.start);
  }
}
