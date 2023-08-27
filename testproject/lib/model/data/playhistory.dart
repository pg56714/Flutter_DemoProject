class Playhistort {
  late int play_id;
  late String user_id;
  late int game;
  late String play_datetime;
  late int play_time;
  late int sync;

  Playhistort({required this.play_id, required this.user_id, required this.game
  , required this.play_datetime, required this.play_time, required this.sync});

  Map<String, dynamic> toMap() {
    return {'play_id': play_id, 'user_id': user_id, 'game': game
    , 'play_datetime': play_datetime, 'play_time': play_time, 'sync': sync};
  }

  Playhistort.fromMap(Map<String, dynamic> map) {
    play_id = map['play_id'];
    user_id = map['user_id'];
    game = map['game'];
    play_datetime = map['play_datetime'];
    play_time = map['play_time'];
    sync = map['sync'];
  }
}