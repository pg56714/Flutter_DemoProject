class Frequency {
  late int frequency_id;
  late String frequency;

  Frequency({required this.frequency_id, required this.frequency});

  Map<String, dynamic> toMap() {
    return {'frequency_id': frequency_id, 'frequency': frequency};
  }

  Frequency.fromMap(Map<String, dynamic> map) {
    frequency_id = map['frequency_id'];
    frequency = map['frequency'];
  }
}