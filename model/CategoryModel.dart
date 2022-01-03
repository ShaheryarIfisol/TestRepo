class CategoryModel {
  int? _id;
  String? _name;
  String? _headline;
  String? _icon;

  CategoryModel({int? id, String? name, String? headline, String? icon}) {
    this._id = id;
    this._name = name;
    this._headline = headline;
    this._icon = icon;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get headline => _headline;
  set headline(String? headline) => _headline = headline;
  String? get icon => _icon;
  set icon(String? icon) => _icon = icon;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _headline = json['headline'];
    _icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['headline'] = this._headline;
    data['icon'] = this._icon;
    return data;
  }

  @override
  String toString() {
    return 'CategoryModel{_id: $_id, _name: $_name, _headline: $_headline, _icon: $_icon}';
  }
}
