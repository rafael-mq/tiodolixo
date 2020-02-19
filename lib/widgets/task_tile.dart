import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;

  TaskTile({this.isChecked = false, this.taskName = "vazia"});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style:
            TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {},
      ),
    );
  }
}
