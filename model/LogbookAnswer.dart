class LogbookAnswer {
  int? _id;
  String? _answer;

  LogbookAnswer({int? id, String? answer}) {
    this._id = id;
    this._answer = answer;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get answer => _answer;
  set answer(String? answer) => _answer = answer;

  LogbookAnswer.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _answer = json['answer']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['answer'] = this._answer;
    return data;
  }

  @override
  String toString() {
    return 'LogbookAnswer{_id: $_id, _answer: $_answer}';
  }

}
