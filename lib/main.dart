import 'package:flutter/material.dart';
import 'package:todooey/models/taskData.dart';
import 'package:todooey/screens/tasksScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: MaterialApp(
          home: TasksScreen(),
        ));
        
  }
}
