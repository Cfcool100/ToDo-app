import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({super.key});

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool setCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Finish my course today",
          style: TextStyle(
              decoration: setCheckBox ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightGreen,
        value: setCheckBox,
        onChanged: (value) {
          setState(() {
            setCheckBox = !setCheckBox;
          });
        },
      ),
    );
  }
}
