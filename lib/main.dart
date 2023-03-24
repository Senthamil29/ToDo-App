import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/IntroPage.dart';
import 'package:flutter_todo_app/widgets/Items.dart';
import 'package:flutter_todo_app/widgets/addDoItems.dart';
import 'package:flutter_todo_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
