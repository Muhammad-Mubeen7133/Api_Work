import 'package:flutter/material.dart';
import 'package:well_app/Api_Teacher/teacher_main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TeacherMainPage   ());
  }
}
