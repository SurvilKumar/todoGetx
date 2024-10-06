import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/utils/colors_const.dart';
import 'package:todo/feature/presentation/widgets/half_curve.dart';
import '../controller/task_controller.dart';
import '../widgets/custom_drawer.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  final TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      //   backgroundColor:  ColorConstant.appColor,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: CustomDrawer(),
      //   ),
      //
      // ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: ColorConstant.appColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CustomDrawer(),CircularAvatarWithArc(),
                ]),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: ColorConstant.whiteColor,
              child: Row(
                children: [CustomDrawer()],
              ),
            ),
          )
        ],
      ),
      // Obx(() {
      //   return ListView.builder(
      //     itemCount: taskController.tasks.length,
      //     itemBuilder: (context, index) {
      //       final task = taskController.tasks[index];
      //       return ListTile(
      //         title: Text(task.title),
      //         trailing: Checkbox(
      //           value: task.isCompleted,
      //           onChanged: (_) => taskController.toggleTaskStatus(task),
      //         ),
      //         onLongPress: () => taskController.removeTask(task),
      //       );
      //     },
      //   );
      // }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(AddTaskScreen()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
