import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todo/core/utils/colors_const.dart';
import 'package:todo/core/utils/constant.dart';
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
      body: Container(
        color: ColorConstant.appColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 40.0, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomDrawer(),
                            CircularAvatarWithArc(),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstant.whiteColor,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(StringConstant.yourTask),
                                ElevatedButton(
                                    onPressed: () {}, child: Container())
                              ],
                            )),
                            Expanded(
                                child:  CircularPercentIndicator(
                                  radius: 50.0,
                                  lineWidth: 10,
                                  percent: 0.50,
                                  reverse: true,
                                  center:  Text("100%"),
                                  progressColor: ColorConstant.appColor,
                                  backgroundColor:ColorConstant.appColor.withOpacity(0.5) ,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstant.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  // Background color for the padding
                ),
                child: Obx(() {
                  return ListView.builder(
                    itemCount: taskController.tasks.length,
                    itemBuilder: (context, index) {
                      final task = taskController.tasks[index];
                      return Card(
                        margin: EdgeInsets.all(10),
                        child: CheckboxListTile(
                          title: Text(
                            task.title,
                            style: TextStyle(
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : null,
                            ),
                          ),
                          value: task.isCompleted,
                          onChanged: (_) =>
                              taskController.toggleTaskStatus(task),
                        ),
                      );
                    },
                  );
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(AddTaskScreen()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
