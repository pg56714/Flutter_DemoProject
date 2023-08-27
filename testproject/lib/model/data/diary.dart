class Diary {
  late int diary_id;
  late String user_id;
  late String mood;
  late String weather;
  late String person;
  late String time;
  late String content;
  late String content2;
  late String content3;
  late String content4;
  late String write_time_start;
  late String write_time_end;
  late int fraction;
  late String write_diary_time;
  late int sync;

  Diary({required this.diary_id, required this.user_id, required this.mood
  , required this.weather, required this.person, required this.time
  , required this.content, required this.content2, required this.content3
  , required this.content4, required this.write_time_start, required this.write_time_end
  , required this.fraction, required this.write_diary_time, required this.sync});

  Map<String, dynamic> toMap() {
    return {'diary_id': diary_id, 'user_id': user_id, 'mood': mood
    , 'weather': weather, 'person': person, 'time': time
    , 'content': content, 'content2': content2, 'content3': content3
    , 'content4': content4, 'write_time_start': write_time_start, 'write_time_end': write_time_end
    , 'fraction': fraction, 'write_diary_time': write_diary_time, 'sync': sync};
  }

  Diary.fromMap(Map<String, dynamic> map) {
    diary_id = map['diary_id'];
    user_id = map['user_id'];
    mood = map['mood'];
    weather = map['weather'];
    person = map['person'];
    time = map['time'];
    content = map['content'];
    content2 = map['content2'];
    content3 = map['content3'];
    content4 = map['content4'];
    write_time_start = map['write_time_start'];
    write_time_end = map['write_time_end'];
    fraction = map['fraction'];
    write_diary_time = map['write_diary_time'];
    sync = map['sync'];
  }
}
