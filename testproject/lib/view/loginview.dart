import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/viewmodel/login_manager.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  
  // TextEditingController抓文字方塊值
  final TextEditingController accController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

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
                        OnPressed(context);
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

  //按鈕函式
  void OnPressed(BuildContext context) async{
    var process = LoginOnPressed(acc: accController.text, pwd: pwdController.text);
    process.LoginOnPressedProcess(context);
  }
}