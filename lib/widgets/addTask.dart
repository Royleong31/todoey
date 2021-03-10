import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooey/models/taskData.dart';

class AddTask extends StatelessWidget {
  String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Add Task',
                    style:
                        TextStyle(fontSize: 20, color: Colors.lightBlueAccent)),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                  onChanged: (newText) {
                    taskName = newText;
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(taskName);
                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
