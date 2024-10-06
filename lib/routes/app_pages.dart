import 'package:get/get.dart';
import 'package:todo/routes/routes_constanst.dart';

import '../feature/presentation/views/add_task_screen.dart';
import '../feature/presentation/views/task_screen.dart';


class AppPages {


  static final routes = [
    GetPage(name: AppRoutes.task, page: () => TaskScreen()),
    GetPage(name: AppRoutes.addTask, page: () => AddTaskScreen()),
  ];
}
