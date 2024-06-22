import 'package:flutter/material.dart';

import 'package:well_app/Teacher_Api/teacher_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TeacherMainsecond());
  }
}
