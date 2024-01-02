import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final bool ischeck;
  final String tasktitle ;
  final void Function (bool?) checkboxchange ;
  final void Function () deleteTask ;
  TaskList({required this.ischeck, required this.tasktitle,
    required this.checkboxchange, required this.deleteTask}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,
      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,
        decoration: ischeck ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value:ischeck ,
        onChanged:checkboxchange ,),
        onLongPress: deleteTask ,
    );
  }
}

