import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiodolixo/models/task.dart';
import 'package:tiodolixo/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final Task _task;

  TaskTile(this._task);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(_task.name),
      onDismissed: (direction) {
        Provider.of<TaskData>(context, listen: false).removeTask(_task);
        Scaffold.of(context)
            .showSnackBar(SnackBar(
              content: Text("${_task.name} removida"),
              duration: Duration(seconds: 1),
              ));
      },
      background: Container(color: Colors.lightBlueAccent[100]),
      child: ListTile(
        title: Text(
          _task.name,
          style: TextStyle(
              decoration: Provider.of<TaskData>(context).getTaskChecked(_task)
                  ? TextDecoration.lineThrough
                  : null),
        ),
        trailing: Checkbox(
          value: _task.isDone,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            Provider.of<TaskData>(context, listen: false).toggleTask(_task);
          },
        ),
      ),
    );
  }
}
