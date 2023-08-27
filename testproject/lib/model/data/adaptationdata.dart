class Adaptation {
  late int q_id;
  late String question;

  Adaptation({required this.q_id, required this.question});

  Map<String, dynamic> toMap() {
    return {'q_id': q_id, 'question': question};
  }

  Adaptation.fromMap(Map<String, dynamic> map) {
    q_id = map['q_id'];
    question = map['question'];
  }
}

class AdaptationScaleW {
  late int w_scale_id;
  late String user_id;
  late int q1;
  late int q2;
  late int q3;
  late int q4;
  late int q5;
  late int q6;
  late int q7;
  late int q8;
  late int q9;
  late int q10;
  late String write_datetime;
  late int sync;

  AdaptationScaleW({required this.w_scale_id, required this.user_id, required this.q1
  , required this.q2, required this.q3, required this.q4
  , required this.q5, required this.q6, required this.q7
  , required this.q8, required this.q9, required this.q10
  , required this.write_datetime, required this.sync});

  Map<String, dynamic> toMap() {
    return {'w_scale_id': w_scale_id, 'user_id': user_id, 'q1': q1
    , 'q2': q2, 'q3': q3, 'q4': q4
    , 'q5': q5, 'q6': q6, 'q7': q7
    , 'q8': q8, 'q9': q9, 'q10': q10
    , 'write_datetime': write_datetime, 'sync': sync};
  }

  AdaptationScaleW.fromMap(Map<String, dynamic> map) {
    w_scale_id = map['w_scale_id'];
    user_id = map['user_id'];
    q1 = map['q1'];
    q2 = map['q2'];
    q3 = map['q3'];
    q4 = map['q4'];
    q5 = map['q5'];
    q6 = map['q6'];
    q7 = map['q7'];
    q8 = map['q8'];
    q9 = map['q9'];
    q10 = map['q10'];
    write_datetime = map['write_datetime'];
    sync = map['sync'];
  }
}