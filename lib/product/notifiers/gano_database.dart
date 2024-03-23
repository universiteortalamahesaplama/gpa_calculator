import 'package:gpa_calculator/product/models/lesson_model.dart';
import 'package:gpa_calculator/product/utility/constants/database_constants.dart';
import 'package:sqflite/sqflite.dart';

class GanoDatabase {
  final String _tableName = 'gano';
  final String _id = 'id';
  final String _lesson = 'lesson';
  final String _credit = 'credit';
  final String _note = 'note';

  Database? _database;
  void open() async {
    _database = await openDatabase(
      DatabaseConstants.databaseName,
      version: DatabaseConstants.databaseVersion,
      onCreate: (db, version) {
        createDatabase(db);
      },
    );
  }

  Future createDatabase(Database db) async {
    final String ganoTable = '''
        CREATE TABLE IF NOT EXISTS CREATE TABLE $_tableName (
        $_id INTEGER PRIMARY KEY AUTOINCREMENT,
        $_lesson TEXT,
        $_credit REAL,
        $_note REAL)
      ''';

    return db.execute(
      ganoTable,
    );
  }

  Future<bool> insert(Map<String, dynamic> row) async {
    int val = await _database!.insert(_tableName, row);
    print(val);
    return val != 0 ? true : false;
  }

  Future<List<Lesson>> queryAll() async {
    Iterable lessons = await _database!.query(_tableName);
    return lessons.map((lesson) => Lesson.fromMap(lesson)).toList();
  }

  Future<Lesson> query(int id) async {
    List<Map<String, dynamic>> lessons = await _database!.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return Lesson.fromMap(lessons.first);
  }

  Future<bool> update(Map<String, dynamic> row) async {
    int result = await _database!.update(
      _tableName,
      row,
      where: 'id = ?',
      whereArgs: [row['id']],
    );

    return result != 0 ? true : false;
  }

  Future<bool> delete(int id) async {
    int result = await _database!.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result != 0 ? true : false;
  }

  void close() {
    _database!.close();
  }

  static final GanoDatabase _instance = GanoDatabase._internal();
  static GanoDatabase get instance => _instance;
  GanoDatabase._internal();
}
