import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:well_app/Api_Teacher/teacher_model.dart';

class TeacherMainPage extends StatelessWidget {
  // const TeacherMainPage({super.key});

  Future<Teacher?> teacher() async {
    var loadJson = await rootBundle.loadString('json_data/teacher.json');
    Map<String, dynamic> decodeJson = await json.decode(loadJson);
   Teacher  t = Teacher.teachermodelsay(decodeJson);
    print(decodeJson);
    return t;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: teacher(),
            builder: (c, AsyncSnapshot<Teacher?> snapshot) {
              final result = snapshot.data!;
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Images'),
              
                  Card(
                    child: ListTile(
                      tileColor: Colors.amber,
                      title: Text('${result.attribute!.color}'),
                    ),
                  ),
                  Text('Subjects'),
                  ...List.generate(
                    result.Subject.length,
                    (index) {
                      return Card(
                        child: ListTile(
                          tileColor: Colors.green,
                          title: Text('${result.Subject[index]}}'),
                        ),
                      );
                    },
                  ),
                  Text('Personal Detail'),
                  Card(
                    child: ListTile(
                      tileColor: Colors.green,
                      title: Text('${result.SchoolNmae}}'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      tileColor: Colors.green,
                      title: Text('${result.TeacherName}}'),
                    ),
                  ),
                ],
              );
            }));
  }
}
