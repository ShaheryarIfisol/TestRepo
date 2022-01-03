class TopicModel {
  int? _id;
  int? _parentId;
  String? _title;
  String? _icon;
  String? _createdAt;
  String? _updatedAt;
  List<TopicModel>? _subTopics;

  TopicModel(
      {int? id,
        int? parentId,
        String? title,
        String? icon,
        List<TopicModel>? subTopics,
        String? createdAt,
        String? updatedAt}) {
    this._id = id;
    this._parentId = parentId;
    this._title = title;
    this._icon = icon;
    this._subTopics=subTopics;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get parentId => _parentId;
  set parentId(int? parentId) => _parentId = parentId;
  String? get title => _title;
  set title(String? title) => _title = title;


  String? get icon => _icon;

  set icon(String? value) {
    _icon = value;
  }

  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  List<TopicModel>? get subTopics => _subTopics;

  set subTopics(List<TopicModel>? value) {
    _subTopics = value;
  }


  TopicModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _parentId = json['parent_id'];
    _title = json['title'];
    _icon = json['icon'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['subtopic'] != null) {
      _subTopics = [];
      json['subtopic'].forEach((v) {
        _subTopics!.add(TopicModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['parent_id'] = this._parentId;
    data['title'] = this._title;
    data['icon'] = this._icon;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['subtopic'] = this._subTopics;
    return data;
  }

  @override
  String toString() {
    return 'TopicModel{_id: $_id, _parentId: $_parentId, _title: $_title, _createdAt: $_createdAt, _updatedAt: $_updatedAt, _subTopics: $_subTopics}';
  }
}
