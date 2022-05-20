import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task_data.dart';
import 'package:untitled/widgets/tile_task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tasks[index].isDane,
                title: taskData.tasks[index].name,
                checkBoxCallback: (checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                longPressCallback: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
