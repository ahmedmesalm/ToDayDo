import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/ui/widgets/task_list.dart';

import '../../model/task_data.dart';

class Taskslist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount:taskData.tasks.length,
            itemBuilder: (context,index){
              return TaskList(
                  ischeck: taskData.tasks[index].isdone,
                  tasktitle: taskData.tasks[index].name,
                  checkboxchange : (newValue){
                      taskData.updateTask(taskData.tasks[index]);
                  }, deleteTask: () {
                    taskData.deleteTask(taskData.tasks[index]);
              },
              );
            });

      },
    );
  }
}
