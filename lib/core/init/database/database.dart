import 'package:gpa_calculator/core/init/database/database_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class InitDatabase<T extends DatabaseModel> {
  Future<bool> open();
  Future<bool> createDatabase(Database db);
  Future<Map<String, dynamic>> insert(Map<String, dynamic> row);
  Future<List<T>> queryAll();
  Future<T> query(int id);
  Future<bool> update(Map<String, dynamic> row);
  Future<bool> delete(int id);
  Future<bool> dropTable();
  Future<bool> deleteAll();
}
