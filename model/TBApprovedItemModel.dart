class TBApprovedModel {
  int? _id;
  String? _name;
  String? _slug;
  String? _description;
  String? _image;
  int? _userId;
  String? _status;
  bool? _isApproved;


  TBApprovedModel(
      {int? id,
        String? name,
        String? slug,
        String? description,
        String? image,
        int? userId,
        String? status,
        bool? isApproved
      }) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._description = description;
    this._image = image;
    this._userId = userId;
    this._status = status;
    this._isApproved = isApproved;
  }


  bool get isApproved => _isApproved??false;

  set isApproved(bool value) {
    _isApproved = value;
  }


  String? get slug => _slug;

  set slug(String? value) {
    _slug = value;
  }

  int? get id => _id??0;
  set id(int? id) => _id = id;
  String get name => _name??"";
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get image => _image??'';
  set image(String? image) => _image = image;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get status => _status;
  set status(String? status) => _status = status;

  TBApprovedModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _description = json['description'];
    _image = json['image'];
    _userId = json['user_id'];
    _status = json['status'];
    _isApproved = json['is_Approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['description'] = this._description;
    data['image'] = this._image;
    data['user_id'] = this._userId;
    data['status'] = this._status;
    data['is_Approved'] = this._isApproved;
    return data;
  }
  ///this method will prevent the override of toString
  String orgAsString() {
    return '#${this.id} ${this.name}';
  }

  ///this method will prevent the override of toString
  bool? orgFilterByName(String filter) {
    return this.name.contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(TBApprovedModel model) {
    return this.id == model.id;
  }


  @override
  String toString() {
    return 'OrganizationModel{_id: $_id, _name: $_name, _description: $_description, _image: $_image, _userId: $_userId, _status: $_status, _isApproved: $_isApproved}';
  }
}
