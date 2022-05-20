import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task.dart';
import 'package:untitled/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  late String newTaskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Add Task",style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                context.read<TaskData>().newValue(value);
              },
            ),
            ElevatedButton(onPressed: (){
              context.read<TaskData>().AddTask();
              Navigator.pop(context);
            }, child: const Text("add"),style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),)
          ],
        ),
      ),
    );
  }
}
