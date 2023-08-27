import 'package:flutter/material.dart';
import 'package:testsqlite/database/manager/student_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEST'),
        ),
        body: HomePage(),
      )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber, // background
              onPrimary: Colors.black, // foreground
              //elevation: 10, //陰影
            ),
            onPressed: (){
              StudentManager.instance.insert();
              //debugPrint('點擊新增');
            },
            //icon: Icon(Icons.send),
            child: Text('新增', style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber, // background
              onPrimary: Colors.black, // foreground
              //elevation: 10, //陰影
            ),
            onPressed: (){
              StudentManager.instance.query();
              //debugPrint('點擊查詢');
            },
            //icon: Icon(Icons.send),
            child: Text('查詢', style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber, // background
              onPrimary: Colors.black, // foreground
              //elevation: 10, //陰影
            ),
            onPressed: (){
              StudentManager.instance.update();
              //debugPrint('點擊修改');
            },
            //icon: Icon(Icons.send),
            child: Text('修改', style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber, // background
              onPrimary: Colors.black, // foreground
              //elevation: 10, //陰影
            ),
            onPressed: (){
              StudentManager.instance.delete();
              //debugPrint('點擊刪除');
            },
            //icon: Icon(Icons.send),
            child: Text('刪除', style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}

