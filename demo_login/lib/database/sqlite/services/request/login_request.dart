import 'dart:async';

import 'package:demo_login/database/sqlite/data/user.dart';
import 'package:demo_login/database/sqlite/manager/login_manager.dart';

class LoginRequest {
  LoginCtr con = new LoginCtr();

  Future<User?> getLogin(String username, String password) {
    var result = con.getLogin(username,password);
    return result;
  }
}