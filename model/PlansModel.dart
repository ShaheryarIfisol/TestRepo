class PlansModel {
  List<Plans>? _plans;

  Details({List<Plans>? plans}) {
    this._plans = plans;
  }

  List<Plans>? get plans => _plans;
  set plans(List<Plans>? plans) => _plans = plans;

  PlansModel.fromJson(Map<String, dynamic> json) {
    if (json['plans'] != null) {
      _plans = <Plans>[];
      json['plans'].forEach((v) { _plans!.add(new Plans.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._plans != null) {
      data['plans'] = this._plans!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'PlansModel{_plans: $_plans}';
  }
}

//class Details {
//
//}

class Plans {
  int? _id;
  String? _name;
  String? _slug;
  String? _description;
  String? _isActive;
  String? _currency;
  String? _stripePlanId;
  List? _prices;
  List<Features>? _features;

  Plans({int? id, String? name, String? slug, String? description, String? isActive, String? currency, String? stripePlanId, List? prices, List<Features>? features}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._description = description;
    this._isActive = isActive;
    this._currency = currency;
    this._stripePlanId = stripePlanId;
    this._prices = prices;
    this._features = features;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get isActive => _isActive;
  set isActive(String? isActive) => _isActive = isActive;
  String? get currency => _currency;
  set currency(String? currency) => _currency = currency;
  String? get stripePlanId => _stripePlanId;
  set stripePlanId(String? stripePlanId) => _stripePlanId = stripePlanId;
  List<Prices>? get prices => _prices as List<Prices>?;
  set prices(List? prices) => _prices = prices;
  List<Features>? get features => _features;
  set features(List<Features>? features) => _features = features;

  Plans.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _description = json['description'];
    _isActive = json['is_active'];
    _currency = json['currency'];
    _stripePlanId = json['stripe_plan_id'];
    if (json['prices'] != null) {
      _prices =  <Prices>[];
      json['prices'].forEach((v) { _prices!.add(new Prices.fromJson(v)); });
//      json['prices'].forEach((v) { _prices.add(new Prices.fromJson(v[0])); });
    }
    if (json['features'] != null) {
      _features = <Features>[];
      json['features'].forEach((v) { _features!.add(new Features.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['description'] = this._description;
    data['is_active'] = this._isActive;
    data['currency'] = this._currency;
    data['stripe_plan_id'] = this._stripePlanId;
    if (this._prices != null) {
      data['prices'] = this._prices!.map((v) => v.toJson()).toList();
    }
    if (this._features != null) {
      data['features'] = this._features!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'Plans{_id: $_id, _name: $_name, _slug: $_slug, _description: $_description, _isActive: $_isActive, _currency: $_currency, _stripePlanId: $_stripePlanId, _prices: $_prices, _features: $_features}';
  }
}

class Prices {

  String? _name;
  String? _priceId;
  String? _price;


  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  Prices({String? name, String? priceIDd, String? price}){
    this._name=name;
    this._price=price;
    this._priceId;
  }

  String? get priceId => _priceId;

  set priceId(String? value) {
    _priceId = value;
  }

  String? get price => _price;

  set price(String? value) {
    _price = value;
  }

  Prices.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _priceId = json['price_id'];
    _price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['price_id'] = this._priceId;
    data['price'] = this._price;
    data['name'] = this._name;
    return data;
  }

  @override
  String toString() {
    return 'Prices{_name: $_name, _priceId: $_priceId, _price: $_price}';
  }
}




class Features {
  int? _id;
  int? _planId;
  String? _slug;
  String? _name;
  String? _description;
  bool? _isAvailable;

  Features({int? id, int? planId, String? slug, String? name, String? description, bool? isAvailable}) {
    this._id = id;
    this._planId = planId;
    this._slug = slug;
    this._name = name;
    this._description = description;
    this._isAvailable = isAvailable;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get planId => _planId;
  set planId(int? planId) => _planId = planId;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  bool? get isAvailable => _isAvailable;
  set isAvailable(bool? isAvailable) => _isAvailable = isAvailable;

  Features.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _planId = json['plan_id'];
    _slug = json['slug'];
    _name = json['name'];
    _description = json['description'];
    _isAvailable = json['is_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['plan_id'] = this._planId;
    data['slug'] = this._slug;
    data['name'] = this._name;
    data['description'] = this._description;
    data['is_available'] = this._isAvailable;
    return data;
  }

  @override
  String toString() {
    return 'Features{_id: $_id, _planId: $_planId, _slug: $_slug, _name: $_name, _description: $_description, _isAvailable: $_isAvailable}';
  }
}
