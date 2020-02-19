import 'package:flutter/material.dart';

import 'package:tiodolixo/widgets/task_tile.dart';
import 'package:tiodolixo/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Esta é uma tarefa"),
    Task(name: "Esta é outra tarefa")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: tasks[index].name,
          isChecked: tasks[index].isDone,
        );
      },
    );
  }
}