import 'dart:async';

import 'package:gpa_calculator/core/init/database/database.dart';
import 'package:gpa_calculator/product/models/lesson_model.dart';
import 'package:gpa_calculator/product/utility/constants/database_constants.dart';
import 'package:sqflite/sqflite.dart';

class GanoDatabase extends InitDatabase<Lesson> {
  final String _tableName = 'gano';
  final String _id = 'id';
  final String _lesson = 'lesson';
  final String _credit = 'credit';
  final String _note = 'note';

  Database? _database;
  Future<bool> open() async {
    try {
      _database = await openDatabase(
        DatabaseConstants.databaseName,
        version: DatabaseConstants.databaseVersion,
        onCreate: (db, version) {
          createDatabase(db);
        },
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createDatabase(Database db) async {
    final String ganoTable = '''
        CREATE TABLE IF NOT EXISTS $_tableName (
        $_id INTEGER PRIMARY KEY AUTOINCREMENT,
        $_lesson TEXT,
        $_credit REAL,
        $_note REAL)
      ''';

    try {
      await db.execute(
        ganoTable,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, dynamic>> insert(Map<String, dynamic> row) async {
    int val = await _database!.insert(_tableName, row);

    bool result = val != 0 ? true : false;
    return {"id": val, "result": result};
  }

  @override
  Future<List<Lesson>> queryAll() async {
    Iterable lessons = await _database!.query(_tableName);
    return lessons.map((lesson) => Lesson.fromJson(lesson)).toList();
  }

  @override
  Future<Lesson> query(int id) async {
    List<Map<String, dynamic>> lessons = await _database!.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return Lesson.fromJson(lessons.first);
  }

  @override
  Future<bool> update(Map<String, dynamic> row) async {
    int result = await _database!.update(
      _tableName,
      row,
      where: 'id = ?',
      whereArgs: [row['id']],
    );

    return result != 0 ? true : false;
  }

  @override
  Future<bool> delete(int id) async {
    int result = await _database!.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result != 0 ? true : false;
  }

  @override
  Future<bool> deleteAll() async {
    try {
      await _database!.delete(_tableName);
      return true;
    } catch (e) {
      throw Exception("Error deleting all: $e");
    }
  }

  @override
  Future<bool> dropTable() async {
    try {
      await _database!.execute('DROP TABLE IF EXISTS $_tableName');
      return true;
    } catch (e) {
      throw Exception("Error deleting table: $e");
    }
  }

  Future<bool> dropDatabase(String databaseName) async {
    try {
      await deleteDatabase(databaseName);
      return true;
    } catch (e) {
      throw Exception("Error deleting database: $e");
    }
  }

  Future<bool> close() async {
    try {
      await _database!.close();
      return true;
    } catch (e) {
      throw Exception("Error closing database: $e");
    }
  }

  static final GanoDatabase _instance = GanoDatabase._internal();
  static GanoDatabase get instance => _instance;
  GanoDatabase._internal();
}
