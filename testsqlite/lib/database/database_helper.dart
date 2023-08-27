import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  //資料庫名稱
  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;
  //資料表名稱
  static final table = 'my_table';

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

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
            name TEXT NOT NULL,
            score INTEGER NOT NULL
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

  //rawQuery寫自己要寫的語法，firstIntValue查詢數量用
  Future<int?> queryRowCount() async {
    Database? db = await instance.database;
    return Sqflite.firstIntValue(
        await db!.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  //修改
  Future<int> update(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    int id = row['id'];
    return await db!.update(table, row, where: 'id = ?', whereArgs: [id]);
  }

  //刪除
  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(table, where: 'id = ?', whereArgs: [id]);
  }



}