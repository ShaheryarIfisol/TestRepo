class FeatureModel {
  int? _id;
  String? _name;
  String? _slug;
  String? _description;
  String? _descriptionUser;
  String? _price;
  int? _featureId;
  bool? _isActive;
  bool? _addOnPaid;
  bool? _planHasFeature;

  FeatureModel(
      {int? id,
        String? name,
        String? slug,
        String? description,
        String? price,
        bool? isActive,
        bool? addOnPaid,
        bool? planHasFeature,
        int? featureId}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._description = description;
    this._price = price;
    this._isActive =isActive;
    this._addOnPaid =addOnPaid;
    this._planHasFeature =planHasFeature;
    this._featureId = featureId;
  }

  bool get isActive => _isActive??false;

  set isActive(bool value) {
    _isActive = value;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get descriptionUser => _descriptionUser;
  set descriptionUser(String? descriptionUser) => _descriptionUser = descriptionUser;
  String? get price => _price;
  set price(String? price) => _price = price;
  int? get featureId => _featureId;
  set featureId(int? featureId) => _featureId = featureId;


  bool? get addOnPaid => _addOnPaid;

  set addOnPaid(bool? value) {
    _addOnPaid = value;
  }

  FeatureModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _description = json['description'];
    _descriptionUser = json['description_user'];
    _price = json['price'];
    _isActive = json['isActive'];
    _addOnPaid = json['addOnPaid'];
    _planHasFeature = json['planHasFeature'];
    _featureId = json['feature_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['description'] = this._description;
    data['description_user'] = this._descriptionUser;
    data['price'] = this._price;
    data['isActive'] = this._isActive;
    data['addOnPaid'] = this._addOnPaid;
    data['planHasFeature'] = this._planHasFeature;
    data['feature_id'] = this._featureId;
    return data;
  }

  @override
  String toString() {
    return 'FeatureModel{_id: $_id, _name: $_name, _slug: $_slug, _description: $_description, _descriptionUser: $_descriptionUser, _price: $_price, _featureId: $_featureId, _isActive: $_isActive, _addOnPaid: $_addOnPaid, _planHasFeature: $_planHasFeature}';
  }

  bool? get planHasFeature => _planHasFeature;

  set planHasFeature(bool? value) {
    _planHasFeature = value;
  }
}
