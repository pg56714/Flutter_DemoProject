class Parent {
  late String parent_id;
  late String password;

  Parent({required this.parent_id, required this.password});

  Map<String, dynamic> toMap() {
    return {'parent_id': parent_id,'password': password};
  }

  Parent.fromMap(Map<String, dynamic> map) {
    parent_id = map['parent_id'];
    password = map['password'];
  }
}