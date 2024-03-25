import 'package:flutter/material.dart';
import 'package:gpa_calculator/product/models/lesson_model.dart';
import 'package:gpa_calculator/product/database/gano_database.dart';

class GanoProvider with ChangeNotifier {
  final List<Lesson> _ganoList = [];

  List<Lesson> get ganoList {
    notifyListeners();
    return _ganoList;
  }

  Future<void> addGano(Lesson gano) async {
    await GanoDatabase.instance.insert(gano.toJson(gano));
    _ganoList.add(gano);
    notifyListeners();
  }

  Future<void> removeGano(Lesson gano) async {
    await GanoDatabase.instance.delete(gano.id!);
    _ganoList.remove(gano);
    notifyListeners();
  }
}
