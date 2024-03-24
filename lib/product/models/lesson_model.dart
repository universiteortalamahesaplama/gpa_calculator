import 'package:flutter/material.dart';
import 'package:gpa_calculator/core/init/database/database_model.dart';

@immutable
class Lesson extends DatabaseModel<Lesson> {
  final int? id;
  final String? lesson;
  final double? credit;
  final double? note;

  Lesson({this.id, this.lesson, this.credit, this.note});

  Lesson.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        lesson = json['lesson'],
        credit = json['credit'],
        note = json['note'];

  @override
  Map<String, dynamic> toJson(Lesson model) {
    return {
      'id': model.id,
      'lesson': model.lesson,
      'credit': model.credit,
      'note': model.note,
    };
  }

  @override
  Lesson fromJson(Map<String, dynamic> json) {
    return Lesson.fromJson(json);
  }
}
