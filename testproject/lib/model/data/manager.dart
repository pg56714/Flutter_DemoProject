class Manager {
  late String teacher_id;

  Manager({required this.teacher_id});

  Map<String, dynamic> toMap() {
    return {'teacher_id': teacher_id};
  }

  Manager.fromMap(Map<String, dynamic> map) {
    teacher_id = map['teacher_id'];
  }
}