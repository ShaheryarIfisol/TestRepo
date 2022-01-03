class ExhibitorModel {
  int? _id=0;
  String? _name;
  String? _email;
  String? _phone;
  String? _website;
  String? _address;
  String? _company;
  String? _description;
  String? _picture;
  String? _qrCode;
  int? _userId;
  int? _organisationId;
  String? _status;
  bool? _selected;
  bool? _isParticipateInEvent;

  ExhibitorModel(
      {int? id,
        String? name,
        String? email,
        String? phone,
        String? website,
        String? address,
        String? company,
        String? description,
        String? picture,
        String? qrCode,
        int? userId,
        int? organisationId,
        bool? selected,
        bool? isParticipateInEvent,
        String? status,
      }) {
    this._id = id;
    this._name = name;
    this._email = email;
    this._phone = phone;
    this._website = website;
    this._address = address;
    this._company = company;
    this._description = description;
    this._picture = picture;
    this._qrCode = qrCode;
    this._userId = userId;
    this._organisationId = organisationId;
    this._status = status;
    this._isParticipateInEvent = isParticipateInEvent;
    this._selected = selected;
  }


  bool get selected => _selected??false;

  set selected(bool value) {
    _selected = value;
  }


  String? get address => _address;

  set address(String? value) {
    _address = value;
  }

  bool? get isParticipateInEvent => _isParticipateInEvent;

  set isParticipateInEvent(bool? value) {
    _isParticipateInEvent = value;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get website => _website;
  set website(String? website) => _website = website;
  String? get company => _company;
  set company(String? company) => _company = company;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get picture => _picture??'';
  set picture(String? picture) => _picture = picture;
  String? get qrCode => _qrCode;
  set qrCode(String? qrCode) => _qrCode = qrCode;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get organisationId => _organisationId;
  set organisationId(int? organisationId) => _organisationId = organisationId;
  String? get status => _status;
  set status(String? status) => _status = status;

  ExhibitorModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _website = json['website'];
    _address = json['address'];
    _company = json['company'];
    _description = json['description'];
    _picture = json['picture'];
    _qrCode = json['qr_code'];
    _userId = json['user_id'];
    _organisationId = json['organisation_id'];
    _status = json['status'];
    _isParticipateInEvent = json['isParticipateInEvent'];
    _selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if(_id!=null)
    data['id'] = this._id;
    data['name'] = this._name;
    data['email'] = this._email;
    data['phone'] = this._phone;
    data['website'] = this._website;
    data['address'] = this._address;
    data['company'] = this._company;
    data['description'] = this._description;
    data['picture'] = this._picture;
    data['qr_code'] = this._qrCode;
    data['user_id'] = this._userId;
    data['organisation_id'] = this._organisationId;
    data['status'] = this._status;
    data['isParticipateInEvent'] = this._isParticipateInEvent;
    data['selected'] = this._selected;
    return data;
  }

  @override
  String toString() {
    return 'ExhibitorModel{_id: $_id, _name: $_name, _email: $_email, _phone: $_phone, _website: $_website, _address: $_address, _company: $_company, _description: $_description, _picture: $_picture, _qrCode: $_qrCode, _userId: $_userId, _organisationId: $_organisationId, _status: $_status, _isParticipateInEvent: $_isParticipateInEvent, _selected: $_selected}';
  }

  getDisplayImage() {

    String image= 'https://i.pravatar.cc/20${name!.length}';
    if(picture!=null && picture!.trim().isNotEmpty)
      image=picture!;
    return image;
  }
}
