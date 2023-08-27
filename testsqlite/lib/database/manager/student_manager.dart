import 'dart:developer';

import 'package:testsqlite/database/data/student.dart';

import '../database_helper.dart';

class StudentManager {
  final dbHelper = DatabaseHelper.instance;

  //Singleton 單例模式，確保一個類別只有一個實例
  StudentManager._privateConstructor();

  static final StudentManager instance = StudentManager._privateConstructor();

  //插入資料
  void insert() async {
    var student = Student(
      id: 1,
      name: 'HKT',
      score: 59,
    );

    dbHelper.insert(student.toMap());
    print('--- insert 執行結束---');
  }

  //查詢資料
  void query() async {
    final rows = await dbHelper.queryAllRows();
    print('查詢結果:');
    rows.forEach((row) => print(row));
    print('--- query 執行結束---');
  }

  //更新資料
  void update() async {
    var student = Student(
      id: 1,
      name: 'HKT',
      score: 100,
    );
    dbHelper.update(student.toMap());
    print('--- update 執行結束---');
  }

  //刪除資料
  void delete() async {
    //queryRowCount最後一筆資料
    final id = await dbHelper.queryRowCount();
    dbHelper.delete(id!);
    print('--- delete 執行結束---');
  }
}