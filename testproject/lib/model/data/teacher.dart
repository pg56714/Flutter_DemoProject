class Teacher {
  late String teacher_id;
  late String password;
  late String teacher_name;

  Teacher({required this.teacher_id, required this.password, required this.teacher_name});

  Map<String, dynamic> toMap() {
    return {'teacher_id': teacher_id, 'password': password, 'teacher_name': teacher_name};
  }

  Teacher.fromMap(Map<String, dynamic> map) {
    teacher_id = map['teacher_id'];
    password = map['password'];
    teacher_name = map['teacher_name'];
  }
}