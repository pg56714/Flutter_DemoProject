class Student {
  late String user_id;
  late String password;
  late String student_id;
  late String student_name;
  late String student_year;
  late String student_class;
  late String birthday;
  late String sex;
  late String adaptation_scale;
  late int sync;

  Student({required this.user_id, required this.password, required this.student_id
  , required this.student_name, required this.student_year, required this.student_class
  , required this.birthday, required this.sex, required this.adaptation_scale
  , required this.sync});

  Map<String, dynamic> toMap() {
    return {'user_id': user_id, 'password': password, 'student_id': student_id
    , 'student_name': student_name, 'student_year': student_year, 'student_class': student_class
    , 'birthday': birthday, 'sex': sex, 'adaptation_scale': adaptation_scale
    , 'sync': sync};
  }

  Student.fromMap(Map<String, dynamic> map) {
    user_id = map['user_id'];
    password = map['password'];
    student_id = map['student_id'];
    student_name = map['student_name'];
    student_year = map['student_year'];
    student_class = map['student_class'];
    birthday = map['birthday'];
    sex = map['sex'];
    adaptation_scale = map['adaptation_scale'];
    sync = map['sync'];
  }
}