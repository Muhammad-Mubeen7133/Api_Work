import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:well_app/Mubeen/mubeen_model.dart';

class MubMain extends StatelessWidget {
  Future<Mubeen?> showMubData() async {
    var loadJson = await rootBundle.loadString('json_data/mubeen.json');
    // ignore: non_constant_identifier_names
    Map<String, dynamic> JsonDecodeApna = await json.decode(loadJson);
    Mubeen m = Mubeen.fromJsomApnaMub(JsonDecodeApna);
    print(m.age);

    return m;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Mubeen Api')),
        ),
        body: FutureBuilder(
            future: showMubData(),
            builder: (c, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  ...List.generate(snapshot.data!.subjects.length, (index) {
                    return Card(
                      child: ListTile(
                        title: Text("${snapshot.data!.subjects[index]}"),
                      ),
                    );
                  }),

                  Card(
                    child: ListTile(
                      title: Text("${snapshot.data!.name}"),
                    ),
                  ),
                  //
                  Card(
                    child: ListTile(
                      title: Text("${snapshot.data!.age}"),
                    ),
                  ),
                  //
                  Card(
                    child: ListTile(
                      title: Text("${snapshot.data!.education}"),
                    ),
                  ),
                ],
              );
            }));
  }
}

// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:well_app/Mubeen/mubeen_model.dart';

// class MubMain extends StatelessWidget {

//   Future<Mubeen?> loadCricketjson() async {
//     var loadJson = await rootBundle.loadString('json_data/mubeen.json');
//     Map<String, dynamic> jsondecode = await json.decode(loadJson);
//     Mubeen q = Mubeen.fromJsomApnaMub(jsondecode);

//     print(q.age);
//     return q;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // loadCricketjson();
//     return Scaffold(
//       body: FutureBuilder(
//           future: loadCricketjson(),
//           builder: (c, s) {
//             if (!s.hasData) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Card(
//                       child: ListTile(
//                         tileColor: Colors.green,
//                         title: Text('${s.data!.name}'),
//                       ),
//                     ),
//                     Card(
//                       child: ListTile(
//                         tileColor: Colors.green,
//                         title: Text('${s.data!.age}'),
//                       ),
//                     ),
//                     Card(
//                       child: ListTile(
//                         tileColor: Colors.green,
//                         title: Text('${s.data!.education}'),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             );
//           }),
//     );
//   }
// }

