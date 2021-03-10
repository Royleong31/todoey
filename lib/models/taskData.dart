import 'package:flutter/foundation.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy ingredients'),
    Task(name: 'Cook food'),
    Task(name: 'Sell food'),
    Task(name: 'Eat food'),
    Task(name: 'Clean up')
  ];

  int get taskCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(String taskName) {
    print('adding task');
    Task newTask = Task(name: taskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void toggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
