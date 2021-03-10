import 'package:flutter/material.dart';
import './taskTile.dart';
import 'package:provider/provider.dart';
import '../models/taskData.dart';
import '../models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, ind) {
            final currentTask = taskData.tasks[ind];
            return TaskTile(
              name: currentTask.name,
              isDone: currentTask.isDone,
              checkHandler: (_) {
                taskData.toggleDone(currentTask);
              },
            );
          },
        );
      },
    );
  }
}
