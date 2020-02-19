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
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: tasks.map((task) => TaskTile(isChecked: task.isDone,)),
    );
  }
}