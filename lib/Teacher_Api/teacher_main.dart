import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:well_app/Teacher_Api/teacher_model.dart';

class TeacherMainsecond extends StatelessWidget {
  const TeacherMainsecond({super.key});
  Future<TeacherSecond?> fetchTeacherData() async {
    var loadJson = await rootBundle.loadString('json_data/teacher.json');
    Map<String, dynamic> JsonDecodeTeacher = await json.decode(loadJson);
    TeacherSecond tt = TeacherSecond.fromJsonTeacher(JsonDecodeTeacher);
    print(tt.teacherName);
    print(tt.schoolName);
    return tt;
  }

  @override
  Widget build(BuildContext context) {
    fetchTeacherData();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Api Works')),
        ),
        body: FutureBuilder(
            future: fetchTeacherData(),
            builder: (c, s) {
              if (!s.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              return Column(
                children: [
                  Text('Teacher name'),
                  Card(
                    child: ListTile(
                      title: Text("${s.data!.teacherName}"),
                    ),
                  ),
                  Text('School name'),
                  Card(
                    child: ListTile(
                      title: Text("${s.data!.schoolName}"),
                    ),
                  ),
                  Text('Subjects names'),
                  ...List.generate(
                    s.data!.subject.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text("${s.data!.subject[index]}"),
                        ),
                      ),
                    ),
                  ),
                  Text('Attributes'),
                  Card(
                    child: ListTile(
                      title: Text("${s.data!.attribute!.height}"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("${s.data!.attribute!.color}"),
                    ),
                  ),
                ],
              );
            }));
  }
}
