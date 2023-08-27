import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/student.dart';
import 'package:login/database/database_helper.dart';
import 'package:login/admin.dart';
import 'database/data/login.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  
  // TextEditingController抓文字方塊值
  final TextEditingController accController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  //前端無須理會-------------------------------------------------------------
  //宣告dbHelper = 類別DatabaseHelper
  var dbHelper = DatabaseHelper();

  //抓值
  Future setSP(User user) async {
    DatabaseHelper sp = DatabaseHelper();

    sp.getLogin("account", user.account);
    sp.getLogin("password", user.password);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar標題可有可無
      appBar: AppBar(
        title: Text('The New Me'),
      ),

      //body標題下方
      //SingleChildScrollView上下滑動(如果沒有這個元件滑不下去)
      body: SingleChildScrollView(
        //reverse手機反轉
        reverse: true,
        //child只能擺放一個元件
        child: Column(
          // 主軸方向的對齊方式mainAxisAlignment: MainAxisAlignment.center,
          // 副軸方向的對齊方式crossAxisAlignment: CrossAxisAlignment.center,
          // Row 副軸為垂直，Column 副軸為水平
          // (當 row 中的元件高度不一樣，才會呈現出 crossAxisAlignment 效果)
          crossAxisAlignment: CrossAxisAlignment.center,

          //children可擺放數個元件
          children: [
            /*
            Image.asset(
              'assets/images/sign_in.png',
              height: 250.h,
              fit: BoxFit.cover,
            ),
             */
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    controller: accController,
                    decoration: InputDecoration(
                      hintText: '學號(帳號)',
                      label: Text(
                        '我的學號(帳號)',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '密碼',
                      label: Text(
                        '我的密碼',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40.h,
                    child: ElevatedButton(
                      //按鈕
                      onPressed: () async{
                          String acc = accController.text;
                          String pwd = pwdController.text;
                          //User? test = await dbHelper.getLogin(acc, pwd);
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
                                          builder: (context) => Admin(strVal: accController.text, strVal1: pwdController.text)
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
                                          builder: (context) => Student(strVal: accController.text, strVal1: pwdController.text)
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
                      },

                      child: Text(
                        '登　入',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
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