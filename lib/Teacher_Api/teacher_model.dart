
class Attribute {
  double? height;
  String? color;

  Attribute({required this.height, required this.color});
  factory Attribute.fromJsonAttribute(Map<String, dynamic> fromAttribute) {
    return Attribute(
        height: fromAttribute['height'], color: fromAttribute['color']);
  }
}

class TeacherSecond {
  String? teacherName;
  String? schoolName;
  List<String> subject;
  Attribute? attribute;
  TeacherSecond(
      {required this.attribute,
        required this.subject,
      required this.teacherName,
      required this.schoolName});

  factory TeacherSecond.fromJsonTeacher(Map<String, dynamic> datayahan) {
    return TeacherSecond(
        subject: datayahan['subject'].cast<String>(),
        schoolName: datayahan['schoolName'],
        teacherName: datayahan['teacherName'],
        attribute: Attribute.fromJsonAttribute(datayahan['attributes']),
        
        );
  }
}
