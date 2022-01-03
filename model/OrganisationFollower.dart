class OrganisationFollower {
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _type;
  int? _providerUserId;
  String? _profession;
  String? _address;
  String? _city;
  String? _phone;
  String? _picture;
  int? _organisationId;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _profileStatus;
  String? _status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  String? _isOrganisationManager;
  String? _isHybridGuest;
  String? _cpdHours;
  String? _profilePercentage;

  OrganisationFollower(
      {int? id,
        String? firstName,
        String? lastName,
        String? email,
        String? type,
        int? providerUserId,
        String? profession,
        String? address,
        String? city,
        String? phone,
        String? picture,
        int? organisationId,
        String? registrationDate,
        String? lastLoginDate,
        String? profileStatus,
        String? status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        String? isOrganisationManager,
        String? isHybridGuest,
        String? cpdHours,
        String? profilePercentage}) {
    this._id = id;
    this._firstName = firstName;
    this._lastName = lastName;
    this._email = email;
    this._type = type;
    this._providerUserId = providerUserId;
    this._profession = profession;
    this._address = address;
    this._city = city;
    this._phone = phone;
    this._picture = picture;
    this._organisationId = organisationId;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._profileStatus = profileStatus;
    this._status = status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._isOrganisationManager = isOrganisationManager;
    this._isHybridGuest = isHybridGuest;
    this._cpdHours = cpdHours;
    this._profilePercentage = profilePercentage;
  }

  int get id => _id??0;
  set id(int id) => _id = id;
  String get firstName => _firstName??"";
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName??"";
  set lastName(String lastName) => _lastName = lastName;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get providerUserId => _providerUserId;
  set providerUserId(int? providerUserId) => _providerUserId = providerUserId;
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
  String? get registrationDate => _registrationDate;
  set registrationDate(String? registrationDate) =>
      _registrationDate = registrationDate;
  String? get lastLoginDate => _lastLoginDate;
  set lastLoginDate(String? lastLoginDate) => _lastLoginDate = lastLoginDate;
  String? get profileStatus => _profileStatus;
  set profileStatus(String? profileStatus) => _profileStatus = profileStatus;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get userRegistrationStatus => _userRegistrationStatus;
  set userRegistrationStatus(String? userRegistrationStatus) =>
      _userRegistrationStatus = userRegistrationStatus;
  String? get profileVisibilityStatus => _profileVisibilityStatus;
  set profileVisibilityStatus(String? profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  String? get isOrganisationManager => _isOrganisationManager;
  set isOrganisationManager(String? isOrganisationManager) =>
      _isOrganisationManager = isOrganisationManager;
  String? get isHybridGuest => _isHybridGuest;
  set isHybridGuest(String? isHybridGuest) => _isHybridGuest = isHybridGuest;
  String? get cpdHours => _cpdHours;
  set cpdHours(String? cpdHours) => _cpdHours = cpdHours;
  String? get profilePercentage => _profilePercentage;
  set profilePercentage(String? profilePercentage) =>
      _profilePercentage = profilePercentage;

  OrganisationFollower.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _type = json['type'];
    _providerUserId = json['provider_user_id'];
    _profession = json['profession'];
    _address = json['address'];
    _city = json['city'];
    _phone = json['phone'];
    _picture = json['picture'];
    _organisationId = json['organisation_id'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _profileStatus = json['profile_status'];
    _status = json['status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
    _isOrganisationManager = json['is_organisation_manager'];
    _isHybridGuest = json['is_hybrid_guest'];
    _cpdHours = json['cpd_hours'];
    _profilePercentage = json['profile_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    data['type'] = this._type;
    data['provider_user_id'] = this._providerUserId;
    data['profession'] = this._profession;
    data['address'] = this._address;
    data['city'] = this._city;
    data['phone'] = this._phone;
    data['picture'] = this._picture;
    data['organisation_id'] = this._organisationId;
    data['registration_date'] = this._registrationDate;
    data['last_login_date'] = this._lastLoginDate;
    data['profile_status'] = this._profileStatus;
    data['status'] = this._status;
    data['user_registration_status'] = this._userRegistrationStatus;
    data['profile_visibility_status'] = this._profileVisibilityStatus;
    data['is_organisation_manager'] = this._isOrganisationManager;
    data['is_hybrid_guest'] = this._isHybridGuest;
    data['cpd_hours'] = this._cpdHours;
    data['profile_percentage'] = this._profilePercentage;
    return data;
  }

  @override
  String toString() {
    return 'OrganisationFollower{_id: $_id, _firstName: $_firstName, _lastName: $_lastName, _email: $_email, _type: $_type, _providerUserId: $_providerUserId, _profession: $_profession, _address: $_address, _city: $_city, _phone: $_phone, _picture: $_picture, _organisationId: $_organisationId, _registrationDate: $_registrationDate, _lastLoginDate: $_lastLoginDate, _profileStatus: $_profileStatus, _status: $_status, _userRegistrationStatus: $_userRegistrationStatus, _profileVisibilityStatus: $_profileVisibilityStatus, _isOrganisationManager: $_isOrganisationManager, _isHybridGuest: $_isHybridGuest, _cpdHours: $_cpdHours, _profilePercentage: $_profilePercentage}';
  }
}
