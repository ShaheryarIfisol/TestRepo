

class LogbookQuestion{
  String _title;
  String _type = "text";
  List<String> _options =[];


  LogbookQuestion(this._title, this._type, this._options);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get type => _type;

  List<String> get options => _options;

  set options(List<String> value) {
    _options = value;
  }

  set type(String value) {
    _type = value;
  }

  @override
  String toString() {
    return 'LogbookQuestion{_title: $_title, _type: $_type, _options: $_options}';
  }




}