import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack ;
  AddTaskScreen({required this.addTaskCallBack}) ;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle ;
    return  Container(
      color: Colors.white60,
      padding: const EdgeInsets.all(20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Add Task",style:
          TextStyle(fontSize: 35,color: Colors.teal,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
           const SizedBox(height: 20,),
            TextField(
             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (newtext){
               newTaskTitle = newtext ;
             },
           ),
           const SizedBox(height: 15,),
           TextButton(
              onPressed:(){
               Provider.of<TaskData>(context,listen: false).addtask(newTaskTitle!);
               Navigator.pop(context) ;
              },
             style: TextButton.styleFrom(
                 backgroundColor: Colors.teal,),
              child:const Text('add',style:
              TextStyle(fontSize:30 ,fontWeight: FontWeight.w400,
                color: Colors.white,)),
           )],
      ),

    );
  }
}
