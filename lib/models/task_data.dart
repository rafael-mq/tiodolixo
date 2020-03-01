import 'package:flutter/foundation.dart';
import 'package:tiodolixo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Relembrar provider'),
    Task(name: 'Aplicar no tiodolixo'),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get count {
    return tasks.length;
  }

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  bool getTaskChecked(Task task) {
    return task.isDone;
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
