class Student {
  String? name;
  int? age;
  int? rollNo;
  String? neckname;
  Student({this.name, this.age, this.rollNo, this.neckname});

  // factory constructor
  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        name: parsedJson['name'],
        age: parsedJson['age'],
        rollNo: parsedJson['rollNo'],
        neckname: parsedJson['neckname']);
  }
}
