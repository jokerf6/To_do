import 'dart:io';

import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class register extends GetxController {
  toLogin();
  back();
}

class registerImp extends register {
  @override
  void toLogin() {
    Get.toNamed(AppRoute.login);
  }

  @override
  back() {
    Get.back();
  }
}
