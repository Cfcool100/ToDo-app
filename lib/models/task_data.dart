import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task>? get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
