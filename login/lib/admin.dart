import 'package:flutter/material.dart';
import 'package:login/database/manager/login_manager.dart';

class Admin extends StatelessWidget {
  String strVal="";
  String strVal1="";

  Admin({Key? key, this.strVal="", this.strVal1=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('admin'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('strVal: $strVal'),
              Text('strVal1: $strVal1'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber, // background
                      onPrimary: Colors.black, // foreground
                      //elevation: 10, //陰影
                    ),
                    onPressed: (){
                      LoginManager.instance.insert();
                      debugPrint('點擊新增');
                    },
                    //icon: Icon(Icons.send),
                    child: Text('新增帳密', style: TextStyle(fontSize: 20),),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber, // background
                      onPrimary: Colors.black, // foreground
                      //elevation: 10, //陰影
                    ),
                    onPressed: (){
                      LoginManager.instance.query();
                      debugPrint('點擊查詢');
                    },
                    //icon: Icon(Icons.send),
                    child: Text('查詢帳密', style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}