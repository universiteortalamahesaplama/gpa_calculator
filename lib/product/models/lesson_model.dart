import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class Lesson {
  final int? id;
  final String? lesson;
  final double? credit;
  final double? note;

  const Lesson({this.id, this.lesson, this.credit, this.note});

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (lesson != null) {
      result.addAll({'lesson': lesson});
    }
    if (credit != null) {
      result.addAll({'credit': credit});
    }
    if (note != null) {
      result.addAll({'note': note});
    }

    return result;
  }

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id: map['id']?.toInt(),
      lesson: map['lesson'],
      credit: map['credit']?.toDouble(),
      note: map['note']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Lesson.fromJson(String source) => Lesson.fromMap(json.decode(source));
}
