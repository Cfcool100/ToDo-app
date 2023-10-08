import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskData>(context);
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
      ),
      itemBuilder: (context, index) {
        final task = taskData.tasks![index];
        return TasksTile(
          taskTitle: task.title!,
          isChecked: task.isDone,
          onLongPress: () => taskData.deleteTask(task),
          callBack: (isChecked) {
            setState(() {
              task.toggleDone();
            });
          },
        );
      },
      itemCount: taskData.tasks?.length,
    );
  }
}
