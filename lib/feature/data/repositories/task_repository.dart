import 'package:get/get.dart';
import '../../domain/entities/task.dart';

class TaskRepository extends GetxService {
  final RxList<Task> _tasks = <Task>[].obs;

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
  }

  void removeTask(Task task) {
    _tasks.remove(task);
  }

  void toggleTaskStatus(Task task) {
    task.isCompleted = !task.isCompleted;
    _tasks.refresh();
  }
}
