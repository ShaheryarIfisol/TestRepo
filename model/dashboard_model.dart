class DashboardModel {
  List<int>? _overview;
  EventPosted? _eventPosted;

  DashboardModel({List<int>? overview, EventPosted? eventPosted}) {
    this._overview = overview;
    this._eventPosted = eventPosted;
  }

  List<int> get overview => _overview??[0,0,0,0,0];
  set overview(List<int>? overview) => _overview = overview;
  EventPosted? get eventPosted => _eventPosted;
  set eventPosted(EventPosted? eventPosted) => _eventPosted = eventPosted;

  DashboardModel.fromJson(Map<String, dynamic> json) {
    _overview = json['overview'].cast<int>();
    _eventPosted = json['event_posted'] != null
        ? new EventPosted.fromJson(json['event_posted'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['overview'] = this._overview;
    if (this._eventPosted != null) {
      data['event_posted'] = this._eventPosted!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'DashboardModel{_overview: $_overview, _eventPosted: $_eventPosted}';
  }
}

class EventPosted {
  int? _thu;
  int? _wed;
  int? _tue;
  int? _mon;
  int? _sun;
  int? _sat;
  int? _fri;

  EventPosted({int? thu, int? wed, int? tue, int? mon, int? sun, int? sat, int? fri}) {
    this._thu = thu;
    this._wed = wed;
    this._tue = tue;
    this._mon = mon;
    this._sun = sun;
    this._sat = sat;
    this._fri = fri;
  }

  int? get thu => _thu;
  set thu(int? thu) => _thu = thu;
  int? get wed => _wed;
  set wed(int? wed) => _wed = wed;
  int? get tue => _tue;
  set tue(int? tue) => _tue = tue;
  int? get mon => _mon;
  set mon(int? mon) => _mon = mon;
  int? get sun => _sun;
  set sun(int? sun) => _sun = sun;
  int? get sat => _sat;
  set sat(int? sat) => _sat = sat;
  int? get fri => _fri;
  set fri(int? fri) => _fri = fri;

  EventPosted.fromJson(Map<String, dynamic> json) {
    _thu = json['Thu'];
    _wed = json['Wed'];
    _tue = json['Tue'];
    _mon = json['Mon'];
    _sun = json['Sun'];
    _sat = json['Sat'];
    _fri = json['Fri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Thu'] = this._thu;
    data['Wed'] = this._wed;
    data['Tue'] = this._tue;
    data['Mon'] = this._mon;
    data['Sun'] = this._sun;
    data['Sat'] = this._sat;
    data['Fri'] = this._fri;
    return data;
  }

  @override
  String toString() {
    return 'EventPosted{_thu: $_thu, _wed: $_wed, _tue: $_tue, _mon: $_mon, _sun: $_sun, _sat: $_sat, _fri: $_fri}';
  }
}
