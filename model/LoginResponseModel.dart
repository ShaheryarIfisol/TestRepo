import 'package:attendo/model/UserModel.dart';

class LoginResponseModel {
  String? _token;
  User? _user;

  LoginResponseModel({String? token, User? user}) {
    this._token = token;
    this._user = user;
  }

  String? get token => _token;
  set token(String? token) => _token = token;
  User? get user => _user;
  set user(User? user) => _user = user;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    _token = json['token'];
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this._token;
    if (this._user != null) {
      data['user'] = this._user!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'LoginResponseModel{_token: $_token, _user: $_user}';
  }

}
