import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TasksTile extends StatelessWidget {
  const TasksTile(
      {super.key,
      required this.taskTitle,
      required this.callBack,
      this.isChecked,
      this.onLongPress});

  final bool? isChecked;
  final String taskTitle;
  final Function callBack;
  final GestureLongPressCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kPrimaryColor,
        value: isChecked,
        // onChanged:
        onChanged: (value) {
          callBack(value);
        },
      ),
    );
  }
}
