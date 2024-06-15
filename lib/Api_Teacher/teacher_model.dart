class Teacher {
  String? TeacherName;
  String? Subject;
  String? SchoolNmae;

  Teacher({this.TeacherName, this.Subject, this.SchoolNmae});

  factory Teacher.teachermodelsay(Map<String,dynamic>teachmodel) {
    return Teacher(
      TeacherName: teachmodel['TeacherName'],
      Subject: teachmodel['Subject'],
      SchoolNmae: teachmodel['SchoolName'],
    );
  }
}
