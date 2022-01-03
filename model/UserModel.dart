import 'package:attendo/model/OrganizationModel.dart';
import 'package:attendo/utilities/Utils.dart';
import 'package:attendo/utilities/helper.dart';

class User {
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
  OrganisationModel? _organisation;
  String? _deviceToken;
  String? _deviceType;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _status;
  String? _profile_status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  String? _cpdHours;
  String? _createdAt;
  String? _updatedAt;
  String? _activationToken;
  String? _profile_percentage;
  bool? _is_organisation_manager;
  bool? _is_hybrid_guest;
  bool? _is_organisation_subscribed;

  User(
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
        OrganisationModel? organisation,
        String? deviceToken,
        String? deviceType,
        String? registrationDate,
        String? lastLoginDate,
        String? status,
        String? profile_status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        String? cpdHours,
        String? createdAt,
        String? activationToken,
        String? updatedAt,
        String? profile_percentage,
        bool? is_organisation_manager,
        bool? is_hybrid_guest,
        bool? is_organisation_subscribed,
      }) {
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
    this._organisation = organisation;
    this._deviceToken = deviceToken;
    this._deviceType = deviceType;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._status = status;
    this._profile_status = profile_status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._cpdHours = cpdHours;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._activationToken = activationToken;
    this._profile_percentage = profile_percentage;
    this._is_organisation_manager = is_organisation_manager;
    this._is_hybrid_guest = is_hybrid_guest;
    this._is_organisation_subscribed = _is_organisation_subscribed;
  }

  String getFullName(){
    String name="";
    name += firstName!;
    name += " "+lastName!;
    return name.trim().capitalize();
  }

  bool? get is_organisation_manager => _is_organisation_manager;

  set is_organisation_manager(bool? value) {
    _is_organisation_manager = value;
  }

  String get profile_percentage =>  (_profile_percentage??'0.0'
  );

  set profile_percentage(String value) {
    _profile_percentage = value;
  }

  String get profile_status => _profile_status??'';

  set profile_status(String value) {
    _profile_status = value;
  }

  OrganisationModel? get organisation => _organisation;

  set organisation(OrganisationModel? value) {
    _organisation = value;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName??'';
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName??'';
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
  int get organisationId => _organisationId??0;
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
  String get profileVisibilityStatus => _profileVisibilityStatus??'Public';
  set profileVisibilityStatus(String profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  String? get cpdHours => _cpdHours;
  set cpdHours(String? cpdHours) => _cpdHours = cpdHours;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get activationToken => _activationToken;
  set activationToken(String? activationToken) =>
      _activationToken = activationToken;

  bool get is_hybrid_guest => _is_hybrid_guest??false;

  set is_hybrid_guest(bool value) {
    _is_hybrid_guest = value;
  }

  bool? get is_organisation_subscribed => _is_organisation_subscribed??false;

  set is_organisation_subscribed(bool? value) {
    _is_organisation_subscribed = value;
  }

  User.fromJson(Map<String, dynamic> json) {
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
    try{_organisationId = int.parse(json['organisation_id'].toString());}catch (e){}
    _deviceToken = json['device_token'];
    _deviceType = json['device_type'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _status = json['status'];
    _profile_status = json['profile_status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
    _cpdHours = json['cpd_hours'].toString();
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _activationToken = json['activation_token'];
    _profile_percentage = json['profile_percentage'].toString();
    _is_organisation_manager = json['is_organisation_manager']??false;
    _is_hybrid_guest = json['is_hybrid_guest']??false;
    _is_organisation_subscribed = json['is_organisation_subscribed']??false;
    _organisation = json['organisation'] != null
        ? new OrganisationModel.fromJson(json['organisation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName??"";
    data['last_name'] = this._lastName??"";
    data['email'] = this._email??"";
    data['type'] = this._type??"";
    data['profession'] = this._profession??"";
    data['address'] = this._address??"";
    data['city'] = this._city??"";
    data['phone'] = this._phone??"";
    data['picture'] = this._picture??"";
    data['organisation_id'] = this._organisationId;
    data['device_token'] = this._deviceToken??"";
    data['device_type'] = this._deviceType??"";
    data['registration_date'] = this._registrationDate??"";
    data['last_login_date'] = this._lastLoginDate??"";
    data['status'] = this._status??"";
    data['profile_status'] = this._profile_status??"";
    data['user_registration_status'] = this._userRegistrationStatus??"";
    data['profile_visibility_status'] = this._profileVisibilityStatus??"";
    data['cpd_hours'] = this._cpdHours??"";
    data['created_at'] = this._createdAt??"";
    data['updated_at'] = this._updatedAt??"";
    data['activation_token'] = this._activationToken??"";
    data['profile_percentage'] = this._profile_percentage??"";
    data['is_organisation_manager'] = this._is_organisation_manager??false;
    data['is_hybrid_guest'] = this._is_hybrid_guest??false;
    data['is_organisation_subscribed'] = this._is_organisation_subscribed??false;
    if (this._organisation != null) {
      data['organisation'] = this._organisation!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'User{_firstName: $_firstName, _email: $_email, _profession: $_profession, _address: $_address, _city: $_city, _phone: $_phone, _picture: $_picture, _deviceType: $_deviceType, _status: $_status, _profile_status: $_profile_status, _userRegistrationStatus: $_userRegistrationStatus, _createdAt: $_createdAt, _updatedAt: $_updatedAt, _profile_percentage: $_profile_percentage, _is_hybrid_guest: $_is_hybrid_guest}';
  }
}