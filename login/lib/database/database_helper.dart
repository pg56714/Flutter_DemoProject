import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'data/login.dart';

class DatabaseHelper{
  //資料庫名稱
  static const _databaseName = "login.db";
  static const _databaseVersion = 1;
  //資料表名稱
  static const table = 'student';

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  factory DatabaseHelper() => instance;

  //Future非同步處理
  Future<Database?>get database async{
    //當資料庫為空就創建，不為空就返回
    if(_database != null){
      return _database;
    }else{
      _database = await _initDatabase();
      return _database;
    }
  }

  _initDatabase() async{
    //指定目錄，存在手機哪裡
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //寫入實體檔案的位置(創建資料庫MyDatabase.db)
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    //新增資料表
    //$table 資料表名稱 在上面 因為很常使用所以用變數
    await db.execute('''
          CREATE TABLE $table (
            id INTEGER PRIMARY KEY,
            account TEXT NOT NULL,
            password TEXT NOT NULL
          )
          ''');
  }

  //CRUD共用的SQL語法
  //新增
  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

  //查詢資料表內所有資料
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  //dynamic、User?
  Future<User?> getLogin(String acc, String pwd) async {
    Database? db = await instance.database;
    var res = await db!.rawQuery("SELECT * FROM $table WHERE account = '$acc' and password = '$pwd'");

    if (res.isNotEmpty) {
      return User.fromMap(res.first);
    }

    return null;
  }

}