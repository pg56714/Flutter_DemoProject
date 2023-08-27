class Mooddisorders {
  late int q_id;
  late String question;

  Mooddisorders({required this.q_id, required this.question});

  Map<String, dynamic> toMap() {
    return {'q_id': q_id, 'question': question};
  }

  Mooddisorders.fromMap(Map<String, dynamic> map) {
    q_id = map['q_id'];
    question = map['question'];
  }
}

class MooddisordersScaleW {
  late int w_scale_id;
  late String parent_id;
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
  late int q11;
  late int q12;
  late int q13;
  late int q14;
  late int q15;
  late int q16;
  late int q17;
  late int q18;
  late int q19;
  late int q20;
  late int q21;
  late int q22;
  late int q23;
  late int q24;
  late int q25;
  late int q26;
  late int q27;
  late int q28;
  late String write_datetime;
  late int sync;

  MooddisordersScaleW({required this.w_scale_id, required this.parent_id, required this.q1
  , required this.q2, required this.q3, required this.q4
  , required this.q5, required this.q6, required this.q7
  , required this.q8, required this.q9, required this.q10
  , required this.q11, required this.q12, required this.q13
  , required this.q14, required this.q15, required this.q16
  , required this.q17, required this.q18, required this.q19
  , required this.q20, required this.q21, required this.q22
  , required this.q23, required this.q24, required this.q25
  , required this.q26, required this.q27, required this.q28
  , required this.write_datetime, required this.sync});

  Map<String, dynamic> toMap() {
    return {'w_scale_id': w_scale_id, 'user_id': parent_id, 'q1': q1
    , 'q2': q2, 'q3': q3, 'q4': q4
    , 'q5': q5, 'q6': q6, 'q7': q7
    , 'q8': q8, 'q9': q9, 'q10': q10
    , 'q11': q11, 'q12': q12, 'q13': q13
    , 'q14': q14, 'q15': q15, 'q16': q16
    , 'q17': q17, 'q18': q18, 'q19': q19
    , 'q20': q20, 'q21': q21, 'q22': q22
    , 'q23': q23, 'q24': q24, 'q25': q25
    , 'q26': q26, 'q27': q27, 'q28': q28
    , 'write_datetime': write_datetime, 'sync': sync};
  }

  MooddisordersScaleW.fromMap(Map<String, dynamic> map) {
    w_scale_id = map['w_scale_id'];
    parent_id = map['user_id'];
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
    q11 = map['q11'];
    q12 = map['q12'];
    q13 = map['q13'];
    q14 = map['q14'];
    q15 = map['q15'];
    q16 = map['q16'];
    q17 = map['q17'];
    q18 = map['q18'];
    q19 = map['q19'];
    q20 = map['q20'];
    q21 = map['q21'];
    q22 = map['q22'];
    q23 = map['q23'];
    q24 = map['q24'];
    q25 = map['q25'];
    q26 = map['q26'];
    q27 = map['q27'];
    q28 = map['q28'];
    write_datetime = map['write_datetime'];
    sync = map['sync'];
  }
}