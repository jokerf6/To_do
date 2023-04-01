import 'package:ecommerce/core/constatnt/rootes.dart';
import 'package:ecommerce/view/screen/editTask.screen.dart';
import 'package:ecommerce/view/screen/homeNav.screen.dart';
import 'package:ecommerce/view/screen/login.screen.dart';
import 'package:ecommerce/view/screen/newCategory.screen.dart';
import 'package:ecommerce/view/screen/register.screen.dart';
import 'package:ecommerce/view/screen/start.screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.start: (context) => start(),
  AppRoute.login: (context) => login(),
  AppRoute.register: (context) => register(),
  AppRoute.home: (context) => homeNav(),
  AppRoute.newCategory: (context) => newCategory(),
  AppRoute.editTask: (context) => editTask(),
};
