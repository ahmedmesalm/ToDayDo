import 'package:flutter/material.dart';
import 'package:todaydo/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [

  ];

  void addtask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle)) ;
    notifyListeners();
  }
  void updateTask (Task task){
    task.doneChange();
    notifyListeners() ;
  }

  void deleteTask (Task task){
    tasks.remove(task);
    notifyListeners() ;
  }

}