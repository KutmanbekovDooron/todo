import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task_data.dart';
import 'package:untitled/screens/TasksScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      lazy: true,
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


