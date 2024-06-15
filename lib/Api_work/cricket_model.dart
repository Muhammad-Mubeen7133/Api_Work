class Cricket {
  String? formate;
  String? playername;
  int? age;
  Cricket({this.formate, this.playername, this.age});

  factory Cricket.fromJsomApna(Map<String, dynamic> cricketdata) {
    return Cricket(
        formate: cricketdata['formate'],
        playername: cricketdata['playername'],
        age: cricketdata['age']);
  }
}
