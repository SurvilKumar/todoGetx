import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors_const.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.appColor),
    useMaterial3: true,
  );
}
