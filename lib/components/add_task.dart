import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../models/task.dart';
import '../models/task_data.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  late String title;

  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskData>(context);
    return Container(
      color: const Color(0XFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 30.0,
        ),
        decoration: kContainerCornerStyle,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true,
              style: const TextStyle(color: Colors.black),
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 35.0,
            ),
            TextButton(
              style: kElevatedButtonStyle,
              onPressed: () {
                setState(() {
                  taskData.addTask(Task(title: title));
                  Navigator.pop(context);
                });
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
