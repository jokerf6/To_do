import 'dart:io';

import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class login extends GetxController {
  toRegister();
  back();
  toHome();
}

class loginImp extends login {
  @override
  void toRegister() {
    Get.toNamed(AppRoute.register);
  }

  @override
  void toHome() {
    Get.offAllNamed(AppRoute.home);
  }

  @override
  back() {
    Get.back();
  }
}
