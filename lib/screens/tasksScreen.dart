import 'package:flutter/material.dart';
import 'package:todooey/models/taskData.dart';
import '../widgets/taskList.dart';
import '../widgets/addTask.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  // void checkHandler(Task task) {
  //   setState(() {
  //     task.toggleDone();
  //   });
  // }

  // void submitTask(String taskName) {
  //   // setState(() {
  //   //   listOfTasks.add(Task(name: taskName));
  //   // });
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 20),
                Text('Todoey',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    )),
                Text('${Provider.of<TaskData>(context).taskCount} tasks',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TaskList()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddTask();
            },
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
