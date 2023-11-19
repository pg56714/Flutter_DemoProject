import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //https://pub.dev/packages/flutter_screenutil RWD套件ScreenUtilInit
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          //關閉右上角debug標籤
          debugShowCheckedModeBanner: false,
          home: Login(),
        );
      },
    );
  }
}
