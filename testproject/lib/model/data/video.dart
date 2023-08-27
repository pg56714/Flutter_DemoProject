class Video {
  late int video_id;
  late String user_id;
  late String name;
  late String url;
  late String write_datetime;
  late int sync;

  Video({required this.video_id, required this.user_id, required this.name
  , required this.url, required this.write_datetime, required this.sync});

  Map<String, dynamic> toMap() {
    return {'video_id': video_id, 'user_id': user_id, 'name': name
    , 'url': url, 'write_datetime': write_datetime, 'sync': sync};
  }

  Video.fromMap(Map<String, dynamic> map) {
    video_id = map['video_id'];
    user_id = map['user_id'];
    name = map['name'];
    url = map['url'];
    write_datetime = map['write_datetime'];
    sync = map['sync'];
  }
}