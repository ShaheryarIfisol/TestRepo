class OrganisationModel {
  int? _id;
  String? _name;
  String? _slug;
  String? _description;
  String? _image;
  String? _website;
  String? _address;
  String? _phone;
  int? _userId;
  String? _status;
  bool? _isfollowed;


  OrganisationModel(
      {int? id,
        String? name,
        String? slug,
        String? description,
        String? image,
        String? website,
        String? address,
        String? phone,
        int? userId,
        String? status,
        bool? isFollowed
      }) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._description = description;
    this._image = image;
    this._website = website;
    this._address = address;
    this._phone = phone;
    this._userId = userId;
    this._status = status;
    this._isfollowed = isFollowed;
  }


  bool get isfollowed => _isfollowed??false;

  set isfollowed(bool value) {
    _isfollowed = value;
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
  String? get website => _website;
  set website(String? website) => _website = website;
  String? get address => _address;
  set address(String? address) => _address = address;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get status => _status;
  set status(String? status) => _status = status;

  OrganisationModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _description = json['description'];
    _image = json['image'];
    _website = json['website'];
    _address = json['address'];
    _phone = json['phone'];
    _userId = json['user_id'];
    _status = json['status'];
    _isfollowed = json['is_followed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['description'] = this._description;
    data['image'] = this._image;
    data['website'] = this._website;
    data['address'] = this._address;
    data['phone'] = this._phone;
    data['user_id'] = this._userId;
    data['status'] = this._status;
    data['is_followed'] = this._isfollowed;
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
  bool isEqual(OrganisationModel model) {
    return this.id == model.id;
  }


  @override
  String toString() {
    return 'OrganizationModel{_id: $_id, _name: $_name, _description: $_description, _image: $_image, _website: $_website, _address: $_address, _phone: $_phone, _userId: $_userId, _status: $_status, _isfollowed: $_isfollowed}';
  }
}
