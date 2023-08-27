import 'package:flutter/material.dart';
class Student extends StatelessWidget {
  String strVal="";
  String strVal1="";

  Student({Key? key, this.strVal="", this.strVal1=""}) : super(key: key);

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
              Text('strVal: $strVal'),
              Text('strVal1: $strVal1')
            ]),
      ),
    );
  }
}