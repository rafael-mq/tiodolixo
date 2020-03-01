import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiodolixo/models/task_data.dart';

import 'package:tiodolixo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.count,
        itemBuilder: (context, index) {
          return TaskTile(taskData.tasks[index]);
        },
      );
    });
  }
}
