import 'dart:developer';

import 'package:login/database/data/login.dart';

import '../database_helper.dart';

class LoginManager {
  final dbHelper = DatabaseHelper.instance;

  //Singleton 單例模式，確保一個類別只有一個實例
  LoginManager._privateConstructor();

  static final LoginManager instance = LoginManager._privateConstructor();

  //插入資料
  void insert() async {
    var user = User(
      id: 2,
      account: '001',
      password: '001',
    );
    dbHelper.insert(user.toMap());
    print('--- insert 執行結束---');
  }


  //查詢資料
  void query() async {
    final rows = await dbHelper.queryAllRows();
    print('查詢結果:');
    rows.forEach((row) => print(row));
    print('--- query 執行結束---');
  }

}