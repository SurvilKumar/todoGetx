import 'package:get/get.dart';

import '../../data/repositories/task_repository.dart';
import '../../domain/entities/task.dart';

class TaskController extends GetxController {
  final TaskRepository _taskRepository = Get.put<TaskRepository>(TaskRepository());

  List<Task> get tasks => _taskRepository.tasks;

  void addTask(String title) {
    final newTask = Task(id: tasks.length + 1, title: title);
    _taskRepository.addTask(newTask);
  }

  void removeTask(Task task) {
    _taskRepository.removeTask(task);
  }

  void toggleTaskStatus(Task task) {
    _taskRepository.toggleTaskStatus(task);
  }
}
