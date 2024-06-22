class Attribute {
  double? height;
  String? color;
  Attribute({required this.height, required this.color});
  factory Attribute.fromJsonAttribute(Map<String, dynamic> fromAttribute) {
    return Attribute(
        height: fromAttribute['height'], color: fromAttribute['color']);
  }
}

class Teacher {
  String? TeacherName;
  List<dynamic> Subject;
  String? SchoolNmae;
  Attribute? attribute;

  Teacher({
    required this.TeacherName,
    required this.Subject,
    required this.SchoolNmae,
    required this.attribute,
  });

  factory Teacher.teachermodelsay(Map<String, dynamic> teachmodel) {
    return Teacher(
      TeacherName: teachmodel['TeacherName'],
      Subject: teachmodel['Subject'],
      SchoolNmae: teachmodel['SchoolName'],
      attribute: Attribute.fromJsonAttribute(
        teachmodel['Attributes'],
      ),
    );
  }
}
