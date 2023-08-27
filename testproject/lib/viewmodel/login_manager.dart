import 'package:flutter/material.dart';
import 'package:testproject/model/data/database_helper.dart';
import 'package:testproject/model/data/logindata.dart';
import 'package:testproject/view/admin/adminview_index.dart';
import 'package:testproject/view/loginview.dart';
import 'package:testproject/view/student/studentview_index.dart';

class LoginManager {
  final dbHelper = DatabaseHelper.instance;

  //Singleton 單例模式，確保一個類別只有一個實例
  LoginManager._privateConstructor();

  static final LoginManager instance = LoginManager._privateConstructor();

  //插入資料
  void insert() async {
    var user = User(
      id: 1,
      account: '000',
      password: '000',
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

class LoginOnPressed extends StatelessWidget {
  String acc="";
  String pwd="";

  LoginOnPressed({Key? key, this.acc="", this.pwd=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginOnPressed'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('acc: $acc'),
              Text('pwd: $pwd')
            ]),
      ),
    );
  }
  
  void LoginOnPressedProcess(BuildContext context) async{
    var dbHelper = DatabaseHelper();

    //抓值
    Future setSP(User user) async {
      dbHelper.getLogin("account", user.account);
      dbHelper.getLogin("password", user.password);
    }

    if (acc.isEmpty) {
      debugPrint('請輸入您的學號(帳號)');
      final ConfirmAction? action = await confirmDialogAcc(context);
    } else if (pwd.isEmpty) {
      debugPrint('請輸入您的密碼');
      final ConfirmAction? action = await confirmDialogPwd(context);
    } else {
      await dbHelper.getLogin(acc, pwd).then((userData) async {
        //admin用來debug
        if(acc == 'admin' && pwd == 'admin'){
              debugPrint('成功');
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Admin(strValAcc: acc, strValPwd: pwd)
                )
              );
          }else{
            if (userData != null) {
              setSP(userData).whenComplete(() {
                debugPrint('成功');
                  //debugPrint(test.toString());
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Student(strValAcc: acc, strValPwd: pwd)
                  )
                );
              });
            }else{
              debugPrint('學號(帳號)或密碼錯誤，請重新輸入');
              final ConfirmAction? action = await confirmDialogAccPwd(context);
            }
          }
        
      }).catchError((error) {
        debugPrint(error);
        debugPrint('登入失敗');
      });
    }
  }
}

enum ConfirmAction {ACCEPT, CANCEL}

Future<ConfirmAction?> confirmDialogAccPwd(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, //控制點擊對話框以外的區域是否隱藏對話框
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('The New Me'),
        content: const Text('學號(帳號)或密碼錯誤，請重新輸入!'),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('確認'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          ),
          /*
          ElevatedButton(
            child: const Text('取消'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.CANCEL);
            },
          )
          */
        ],
      );
    },
  );
}

Future<ConfirmAction?> confirmDialogAcc(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, //控制點擊對話框以外的區域是否隱藏對話框
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('The New Me'),
        content: const Text('請輸入學號(帳號)'),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('確認'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          ),
        ],
      );
    },
  );
}

Future<ConfirmAction?> confirmDialogPwd(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, //控制點擊對話框以外的區域是否隱藏對話框
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('The New Me'),
        content: const Text('請輸入密碼'),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('確認'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          ),

        ],
      );
    },
  );
}