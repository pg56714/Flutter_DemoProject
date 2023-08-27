class Relationship {
  late int signout_id;
  late String user_id;
  late String mood;
  late String mood2;
  late String datetime;
  late int sync;

  Relationship({required this.signout_id, required this.user_id, required this.mood
  , required this.mood2, required this.datetime, required this.sync});

  Map<String, dynamic> toMap() {
    return {'signout_id': signout_id, 'user_id': user_id, 'mood': mood
    , 'mood2': mood2, 'datetime': datetime, 'sync': sync};
  }

  Relationship.fromMap(Map<String, dynamic> map) {
    signout_id = map['signout_id'];
    user_id = map['user_id'];
    mood = map['mood'];
    mood2 = map['mood2'];
    datetime = map['datetime'];
    sync = map['sync'];
  }
}