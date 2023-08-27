class Student {
  final int id;
  final String name;
  final int score;

  Student({required this.id, required this.name, required this.score});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'score': score};
  }
}
