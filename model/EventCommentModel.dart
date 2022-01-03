class EventCommentModel {
  int? _id;
  Commenter? _commenter;
  int? _commentableId;
  String? _comment;
  String? _time;
  List<Null>? _children;

  EventCommentModel(
      {int? id,
        Commenter? commenter,
        int? commentableId,
        String? comment,
        String? time,
        List<Null>? children}) {
    this._id = id;
    this._commenter = commenter;
    this._commentableId = commentableId;
    this._comment = comment;
    this._time = time;
    this._children = children;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  Commenter? get commenter => _commenter;
  set commenter(Commenter? commenter) => _commenter = commenter;
  int? get commentableId => _commentableId;
  set commentableId(int? commentableId) => _commentableId = commentableId;
  String? get comment => _comment;
  set comment(String? comment) => _comment = comment;
  List<Null>? get children => _children;
  set children(List<Null>? children) => _children = children;


  String? get time => _time;

  set time(String? value) {
    _time = value;
  }

  EventCommentModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _commenter = json['commenter'] != null
        ? new Commenter.fromJson(json['commenter'])
        : null;
    _commentableId = json['commentable_id'];
    _comment = json['comment'];
    _time = json['time'];
//    if (json['children'] != null) {
//      _children = new List<Null>();
//      json['children'].forEach((v) {
//        _children.add(new Null.fromJson(v));
//      });
//    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    if (this._commenter != null) {
      data['commenter'] = this._commenter!.toJson();
    }
    data['commentable_id'] = this._commentableId;
    data['comment'] = this._comment;
    data['time'] = this._time;
//    if (this._children != null) {
//      data['children'] = this._children.map((v) => v.toJson()).toList();
//    }
    return data;
  }
}

class Commenter {
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _type;
  String? _profession;
  String? _address;
  String? _city;
  String? _phone;
  String? _picture;
  int? _organisationId;
  String? _deviceToken;
  String? _deviceType;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  int? _cpdHours;
  String? _profilePercentage;

  Commenter(
      {int? id,
        String? firstName,
        String? lastName,
        String? email,
        String? type,
        String? profession,
        String? address,
        String? city,
        String? phone,
        String? picture,
        int? organisationId,
        String? deviceToken,
        String? deviceType,
        String? registrationDate,
        String? lastLoginDate,
        String? status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        int? cpdHours,
        String? profilePercentage}) {
    this._id = id;
    this._firstName = firstName;
    this._lastName = lastName;
    this._email = email;
    this._type = type;
    this._profession = profession;
    this._address = address;
    this._city = city;
    this._phone = phone;
    this._picture = picture;
    this._organisationId = organisationId;
    this._deviceToken = deviceToken;
    this._deviceType = deviceType;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._status = status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._cpdHours = cpdHours;
    this._profilePercentage = profilePercentage;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get profession => _profession;
  set profession(String? profession) => _profession = profession;
  String? get address => _address;
  set address(String? address) => _address = address;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get picture => _picture;
  set picture(String? picture) => _picture = picture;
  int? get organisationId => _organisationId;
  set organisationId(int? organisationId) => _organisationId = organisationId;
  String? get deviceToken => _deviceToken;
  set deviceToken(String? deviceToken) => _deviceToken = deviceToken;
  String? get deviceType => _deviceType;
  set deviceType(String? deviceType) => _deviceType = deviceType;
  String? get registrationDate => _registrationDate;
  set registrationDate(String? registrationDate) =>
      _registrationDate = registrationDate;
  String? get lastLoginDate => _lastLoginDate;
  set lastLoginDate(String? lastLoginDate) => _lastLoginDate = lastLoginDate;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get userRegistrationStatus => _userRegistrationStatus;
  set userRegistrationStatus(String? userRegistrationStatus) =>
      _userRegistrationStatus = userRegistrationStatus;
  String? get profileVisibilityStatus => _profileVisibilityStatus;
  set profileVisibilityStatus(String? profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  int? get cpdHours => _cpdHours;
  set cpdHours(int? cpdHours) => _cpdHours = cpdHours;

  Commenter.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _type = json['type'];
    _profession = json['profession'];
    _address = json['address'];
    _city = json['city'];
    _phone = json['phone'];
    _picture = json['picture'];
    _organisationId = json['organisation_id'];
    _deviceToken = json['device_token'];
    _deviceType = json['device_type'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _status = json['status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    data['type'] = this._type;
    data['profession'] = this._profession;
    data['address'] = this._address;
    data['city'] = this._city;
    data['phone'] = this._phone;
    data['picture'] = this._picture;
    data['organisation_id'] = this._organisationId;
    data['device_token'] = this._deviceToken;
    data['device_type'] = this._deviceType;
    data['registration_date'] = this._registrationDate;
    data['last_login_date'] = this._lastLoginDate;
    data['status'] = this._status;
    data['user_registration_status'] = this._userRegistrationStatus;
    data['profile_visibility_status'] = this._profileVisibilityStatus;
    data['cpd_hours'] = this._cpdHours;
    data['profile_percentage'] = this._profilePercentage;
    return data;
  }
}
