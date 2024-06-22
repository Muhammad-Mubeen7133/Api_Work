import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:well_app/Api_work/cricket_model.dart';

class CricketPage extends StatelessWidget {

  Future<Cricket?> loadCricketjson() async {
    var loadJson = await rootBundle.loadString('json_data/cricket.json');
    Map<String, dynamic> jsondecode = await json.decode(loadJson);
    Cricket q = Cricket.fromJsomApna(jsondecode);
    print(q.playername);
    print(q.formate);
    print(q.age);
    return q;
  }

  @override
  Widget build(BuildContext context) {
    // loadCricketjson();
    return Scaffold(
      body: FutureBuilder(
          future: loadCricketjson(),
          builder: (c, s) {
            if (!s.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Card(
                      child: ListTile(
                        tileColor: Colors.green,
                        title: Text('${s.data!.playername}'),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        tileColor: Colors.green,
                        title: Text('${s.data!.age}'),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        tileColor: Colors.green,
                        title: Text('${s.data!.formate}'),
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}
