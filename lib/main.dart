import 'package:flutter/material.dart';
import 'package:todaydo/model/task_data.dart';
import 'package:todaydo/ui/home_screen/home_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        routes: {
          HomeScreen.routeName:(context) =>  HomeScreen() ,
        },
        initialRoute: HomeScreen.routeName,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
