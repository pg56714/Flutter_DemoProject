class Relationship {
  late int rlts_id;
  late String parent_id;
  late String user_id;
  late String relationship;
  late String cohabitation;
  late String discipline;
  late int home_order;
  late int brothers_sisters;
  late String drug;
  late String income;
  late String f_educate;
  late String m_educate;
  late int sync;

  Relationship({required this.rlts_id, required this.parent_id, required this.user_id
  , required this.relationship, required this.cohabitation, required this.discipline
  , required this.home_order, required this.brothers_sisters, required this.drug
  , required this.income, required this.f_educate, required this.m_educate
  , required this.sync});

  Map<String, dynamic> toMap() {
    return {'rlts_id': rlts_id, 'parent_id': parent_id, 'user_id': user_id
    , 'relationship': relationship, 'cohabitation': cohabitation, 'discipline': discipline
    , 'home_order': home_order, 'brothers_sisters': brothers_sisters, 'drug': drug
    , 'income': income, 'f_educate': f_educate, 'm_educate': m_educate
    , 'sync': sync};
  }

  Relationship.fromMap(Map<String, dynamic> map) {
    rlts_id = map['rlts_id'];
    parent_id = map['parent_id'];
    user_id = map['user_id'];
    relationship = map['relationship'];
    cohabitation = map['cohabitation'];
    discipline = map['discipline'];
    home_order = map['home_order'];
    brothers_sisters = map['brothers_sisters'];
    drug = map['drug'];
    income = map['income'];
    f_educate = map['f_educate'];
    m_educate = map['m_educate'];
    sync = map['sync'];
  }
}