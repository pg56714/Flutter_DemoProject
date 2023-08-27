//2個類別都可以用
class User {
  late int id;
  late String account;
  late String password;

  User({required this.id, required this.account, required this.password});

  Map<String, dynamic> toMap() {
    return {'id': id, 'account': account, 'password': password};
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    account = map['account'];
    password = map['password'];
  }
}

/*
class User {
  final int id;
  final String account;
  final String password;

  static final columns = ["id", "account", "password"];
  User(this.id, this.account, this.password);
  factory User.fromMap(Map<dynamic, dynamic> data) {
    return User(
      data['id'],
      data['account'],
      data['password'],
    );
  }
  Map<dynamic, dynamic> toMap() => {
    "id": id,
    "account": account,
    "password": password,
  };
}
 */