import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:well_app/Api_work/student_model.dart';

class MainPageApi extends StatelessWidget {
  var jsondecode;
  Future<Student?> loadAsset() async {
    // data conseider internet say intezar karna paray ga
    // json string ki form mai load hamaray pass
    var loadJson = await rootBundle.loadString('json_data/student_json.json');
    // this is called asain programming
    // ye data bhi decode honay mai waqt to is kay sath bhi await ka keyword
    Map<String, dynamic> jsondecode = await json.decode(loadJson);
    Student s = Student.fromJson(jsondecode);
    print(s.age);
    print(s.name);
    print(s.rollNo);
    print(s.neckname);
    s.age;
    return s;
  }

  @override
  Widget build(BuildContext context) {
    loadAsset();
    return Scaffold(
        body: FutureBuilder(
            future: loadAsset(),
            // future builder mai jo bhi data  load aaye ga who Asynchhhh ki zimadaree hoge
            builder: (c, AsyncSnapshot<Student?> snapshot) {
              if (!snapshot.hasData || snapshot == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                      tileColor: Colors.green,
                      title: Text("${snapshot.data!.rollNo}"),
                    ),
                  )
                ],
              );
            }));
  }
}
