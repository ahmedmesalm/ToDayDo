import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/model/task_data.dart';
import 'package:todaydo/ui/add_task_screen/add_task.dart';
import '../widgets/tasks_list.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen' ;
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width ;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.playlist_add_check,size:40,color: Colors.white,),
                SizedBox(width: 20,),
                Text('ToDayDo',
                  style: TextStyle(
                      fontSize:40,fontWeight: FontWeight.bold,
                       color: Colors.white),)
              ],
            ),
             const SizedBox(height: 25,),
              Text('${Provider.of<TaskData>(context).tasks.length}Tasks',
              style:
              const TextStyle(fontSize: 25,color: Colors.white,
                  fontWeight: FontWeight.normal),),
             const Spacer(flex: 1,),
            Padding(
              padding:  const EdgeInsets.only(top: 15),
              child: Container(
               height: height *.7,
                width: width *.91,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child:   Taskslist(),
              ),
            ),
             const Spacer(flex:55,),
          ],
        ),
          floatingActionButton: FloatingActionButton(
             backgroundColor: Colors.teal,
            onPressed: (){
               showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                        child: AddTaskScreen(addTaskCallBack: (newTaskTitle){
                            // Provider.of<TaskData>(context).tasks.add(Task(name: newTaskTitle));
                            // Navigator.pop(context);

                        },))) );
            },
             child:  const Icon(Icons.add,size: 40,)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
