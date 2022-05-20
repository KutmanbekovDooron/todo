import 'package:flutter/cupertino.dart';
import 'package:untitled/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "buy milk"),
    Task(name: "buy eggs"),
    Task(name: "buy pepsi"),
  ];
  String newDataName = "";

  void AddTask(){
    var task = Task(name: newDataName);
    tasks.add(task);
    notifyListeners();
  }

  void newValue(String newDataName){
    print(newDataName);
    this.newDataName = newDataName;
    notifyListeners();
  }


  void updateTask(Task task){
    task.toggleDane();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}