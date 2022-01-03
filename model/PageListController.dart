

class PageListController {
  int? _totalPages,_nextPage,_previousPage,_firstPage;
  int? _currentPage;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  String? _nextPageUrl;
  String? _path;
  String? _perPage;
  String? _prevPageUrl;
  int? _to;
  int? _total;

  PageListController(
      {int? currentPage,
        String? firstPageUrl,
        int? from,
        int? lastPage,
        String? lastPageUrl,
        String? nextPageUrl,
        String? path,
        String? perPage,
        String? prevPageUrl,
        int? to,
        int? total}) {
    this._currentPage = currentPage;
    this._firstPageUrl = firstPageUrl;
    this._from = from;
    this._lastPage = lastPage;
    this._lastPageUrl = lastPageUrl;
    this._nextPageUrl = nextPageUrl;
    this._path = path;
    this._perPage = perPage;
    this._prevPageUrl = prevPageUrl;
    this._to = to;
    this._total = total;
  }

  int? get totalPages => _totalPages;

  set totalPages(int? value) {
    _totalPages = value;
  }

  int? get currentPage => _currentPage;
  set currentPage(int? currentPage) => _currentPage = currentPage;
  String get firstPageUrl => _firstPageUrl??"";
  set firstPageUrl(String firstPageUrl) => _firstPageUrl = firstPageUrl;
  int? get from => _from;
  set from(int? from) => _from = from;
  int? get lastPage => _lastPage;
  set lastPage(int? lastPage) => _lastPage = lastPage;
  String get lastPageUrl => _lastPageUrl??"";
  set lastPageUrl(String lastPageUrl) => _lastPageUrl = lastPageUrl;
  String get nextPageUrl => _nextPageUrl??"";
  set nextPageUrl(String nextPageUrl) => _nextPageUrl = nextPageUrl;
  String? get path => _path;
  set path(String? path) => _path = path;
  String? get perPage => _perPage;
  set perPage(String? perPage) => _perPage = perPage;
  String? get prevPageUrl => _prevPageUrl;
  set prevPageUrl(String? prevPageUrl) => _prevPageUrl = prevPageUrl;
  int? get to => _to;
  set to(int? to) => _to = to;
  int? get total => _total;
  set total(int? total) => _total = total;

  PageListController.fromJson(Map<String, dynamic> json) {
    _currentPage = json['current_page'];
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'].toString();
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this._currentPage;
    data['first_page_url'] = this._firstPageUrl;
    data['from'] = this._from;
    data['last_page'] = this._lastPage;
    data['last_page_url'] = this._lastPageUrl;
    data['next_page_url'] = this._nextPageUrl;
    data['path'] = this._path;
    data['per_page'] = this._perPage;
    data['prev_page_url'] = this._prevPageUrl;
    data['to'] = this._to;
    data['total'] = this._total;
    return data;
  }

  get nextPage => _nextPage;

  get firstPage => _firstPage;

  set firstPage(value) {
    _firstPage = value;
  }

  get previousPage => _previousPage;

  set previousPage(value) {
    _previousPage = value;
  }

  set nextPage(value) {
    _nextPage = value;
  }

  @override
  String toString() {
    return 'PageListController{_totalPages: $_totalPages, _nextPage: $_nextPage, _previousPage: $_previousPage, _firstPage: $_firstPage, _currentPage: $_currentPage, _firstPageUrl: $_firstPageUrl, _from: $_from, _lastPage: $_lastPage, _lastPageUrl: $_lastPageUrl, _nextPageUrl: $_nextPageUrl, _path: $_path, _perPage: $_perPage, _prevPageUrl: $_prevPageUrl, _to: $_to, _total: $_total}';
  }

}
//class PageListController {
//  int _currentPage;
//  String _firstPageUrl;
//  int _from;
//  int _lastPage;
//  String _lastPageUrl;
//  String _nextPageUrl;
//  String _path;
//  int _perPage;
//  String _prevPageUrl;
//  int _to;
//  int _total;
//
//  PageListController(
//      {int currentPage,
//        String firstPageUrl,
//        int from,
//        int lastPage,
//        String lastPageUrl,
//        String nextPageUrl,
//        String path,
//        int perPage,
//        String prevPageUrl,
//        int to,
//        int total}) {
//    this._currentPage = currentPage;
//    this._firstPageUrl = firstPageUrl;
//    this._from = from;
//    this._lastPage = lastPage;
//    this._lastPageUrl = lastPageUrl;
//    this._nextPageUrl = nextPageUrl;
//    this._path = path;
//    this._perPage = perPage;
//    this._prevPageUrl = prevPageUrl;
//    this._to = to;
//    this._total = total;
//  }
//
//  int get currentPage => _currentPage;
//  set currentPage(int currentPage) => _currentPage = currentPage;
//  String get firstPageUrl => _firstPageUrl;
//  set firstPageUrl(String firstPageUrl) => _firstPageUrl = firstPageUrl;
//  int get from => _from;
//  set from(int from) => _from = from;
//  int get lastPage => _lastPage;
//  set lastPage(int lastPage) => _lastPage = lastPage;
//  String get lastPageUrl => _lastPageUrl;
//  set lastPageUrl(String lastPageUrl) => _lastPageUrl = lastPageUrl;
//  String get nextPageUrl => _nextPageUrl;
//  set nextPageUrl(String nextPageUrl) => _nextPageUrl = nextPageUrl;
//  String get path => _path;
//  set path(String path) => _path = path;
//  int get perPage => _perPage;
//  set perPage(int perPage) => _perPage = perPage;
//  String get prevPageUrl => _prevPageUrl;
//  set prevPageUrl(String prevPageUrl) => _prevPageUrl = prevPageUrl;
//  int get to => _to;
//  set to(int to) => _to = to;
//  int get total => _total;
//  set total(int total) => _total = total;
//
//  PageListController.fromJson(Map<String, dynamic> json) {
//    _currentPage = json['current_page'];
//    _firstPageUrl = json['first_page_url'];
//    _from = json['from'];
//    _lastPage = json['last_page'];
//    _lastPageUrl = json['last_page_url'];
//    _nextPageUrl = json['next_page_url'];
//    _path = json['path'];
//    _perPage = json['per_page'];
//    _prevPageUrl = json['prev_page_url'];
//    _to = json['to'];
//    _total = json['total'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['current_page'] = this._currentPage;
//    data['first_page_url'] = this._firstPageUrl;
//    data['from'] = this._from;
//    data['last_page'] = this._lastPage;
//    data['last_page_url'] = this._lastPageUrl;
//    data['next_page_url'] = this._nextPageUrl;
//    data['path'] = this._path;
//    data['per_page'] = this._perPage;
//    data['prev_page_url'] = this._prevPageUrl;
//    data['to'] = this._to;
//    data['total'] = this._total;
//    return data;
//  }
//}
