import 'dart:io';

import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class start extends GetxController {
  toLogin();
  toRegister();
  back();
}

class startImp extends start {
  @override
  void toLogin() {
    Get.toNamed(AppRoute.login);
  }

  @override
  void toRegister() {
    Get.toNamed(AppRoute.register);
  }

  @override
  back() {
    Get.back();
  }
}
