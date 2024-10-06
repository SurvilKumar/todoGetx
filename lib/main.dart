import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/routes/routes_constanst.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/constant.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConstant.appName,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.task,
      getPages: AppPages.routes,
    );
  }
}
