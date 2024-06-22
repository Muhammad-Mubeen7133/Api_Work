class Mubeen {

  String? name;
  int? age;
  String? education;
  List<String> subjects;

  Mubeen(
      {

      required this.name,

      required this.age,

      required this.education,

      required this.subjects
      
      }
      );

  factory Mubeen.fromJsomApnaMub(Map<String, dynamic> cricketdata) {
    // Cast each element of the list to String
    List<dynamic> subjectsDynamic = cricketdata['subjects'];
    List<String> subjectsString = subjectsDynamic.cast<String>();

    return Mubeen(

        name: cricketdata['name'],

        age: cricketdata['age'],

        education: cricketdata['education'],

        // subjects: cricketdata['subjects'].cast<String>()
        subjects: subjectsString
        
        );

  }
}

