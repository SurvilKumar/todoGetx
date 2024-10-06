import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/task_controller.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();
  final TaskController taskController = Get.find<TaskController>();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                labelText: 'Task Title',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                taskController.addTask(_taskController.text);
                Get.back();
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
