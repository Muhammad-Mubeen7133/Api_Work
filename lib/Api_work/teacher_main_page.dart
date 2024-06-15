import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TeacherMainPage extends StatelessWidget {


teacher() async{
  var loadJson=await rootBundle.loadString('json_data\teacher.json');
  var decodejson=await json.decode(loadJson);
  

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}