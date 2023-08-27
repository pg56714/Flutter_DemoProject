class Moodthermometer {
  late int tmmt_id ;
  late String user_id;
  late String mood1;
  late String mood2;
  late String body;
  late String idea;
  late String calmidea;
  late String mood3;
  late String write_diary_time;
  late int sync;

  Moodthermometer({required this.tmmt_id, required this.user_id, required this.mood1
  , required this.mood2, required this.body, required this.idea
  , required this.calmidea, required this.mood3, required this.write_diary_time
  , required this.sync});

  Map<String, dynamic> toMap() {
    return {'tmmt_id': tmmt_id, 'user_id': user_id, 'mood1': mood1
    , 'mood2': mood2, 'body': body, 'idea': idea
    , 'calmidea': calmidea, 'mood3': mood3, 'write_diary_time': write_diary_time
    , 'sync': sync};
  }

  Moodthermometer.fromMap(Map<String, dynamic> map) {
    tmmt_id = map['tmmt_id'];
    user_id = map['user_id'];
    mood1 = map['mood1'];
    mood2 = map['mood2'];
    body = map['body'];
    idea = map['idea'];
    calmidea = map['calmidea'];
    mood3 = map['mood3'];
    write_diary_time = map['write_diary_time'];
    sync = map['sync'];
  }
}
