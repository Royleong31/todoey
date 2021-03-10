import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooey/models/taskData.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isDone;
  final Function checkHandler;

  TaskTile({this.name, this.isDone, this.checkHandler});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        final taskObj = Provider.of<TaskData>(context, listen: false);
        taskObj.deleteTask(
            taskObj.tasks.firstWhere((element) => element.name == name));
      },
      title: Text(
        name,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkHandler,
      ),
    );
  }
}
