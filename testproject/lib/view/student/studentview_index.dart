import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  String strValAcc="";
  String strValPwd="";

  Student({Key? key, this.strValAcc="", this.strValPwd=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('student'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('strValAcc: $strValAcc'),
              Text('strValPwd: $strValPwd')
            ]),
      ),
    );
  }
}