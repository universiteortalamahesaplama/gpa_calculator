class PeriodNote {
  final String? grade;
  final String? period;
  final double? note;

  PeriodNote({this.grade, this.period, this.note});

  factory PeriodNote.fromJson(Map<String, dynamic> json) {
    return PeriodNote(
      grade: json['class'],
      period: json['name'],
      note: json['description'],
    );
  }
}
