import 'dart:convert';
// import 'dart:io';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

DateTime? parseTime(dynamic date) {
  return GetPlatform.isIOS? (date as Timestamp).toDate() : (date.toDate());
}
class ChatModel {
  List<Messages>? _messages;
  DateTime? _created;
  Sender? _sender;
  List<int?>? _users;
  Sender? _receiver;

  ChatModel(
      {
        List<Messages>? messages,
        DateTime? created,
        Sender? sender,
        List<int?>? users,
        Sender? receiver}) {
    this._messages = messages;
    this._created = created;
    this._sender = sender;
    this._users = users;
    this._receiver = receiver;
  }

  List<Messages> get messages => _messages??[];
  set messages(List<Messages>? messages) => _messages = messages;
  DateTime? get created => _created;
  set created(DateTime? created) => _created = created??DateTime.now();
  Sender? get sender => _sender;
  set sender(Sender? sender) => _sender = sender;
  List<int?>? get users => _users;
  set users(List<int?>? users) => _users = users;
  Sender? get receiver => _receiver;
  set receiver(Sender? receiver) => _receiver = receiver;

  ChatModel.fromJson(Map<String, dynamic> json) {
    if (json['messages'] != null) {
      _messages = [];
      json['messages'].forEach((v) {
        _messages!.add(new Messages.fromJson(v));
      });
    }
    if(json['created']!=null&& (json['created'] is Timestamp))
    _created = parseTime(json['created']);
    _sender =
    json['sender'] != null ? new Sender.fromJson(json['sender']) : null;
    _users = json['users'].cast<int>();
    _receiver =
    json['receiver'] != null ? new Sender.fromJson(json['receiver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._messages != null) {
      data['messages'] = this._messages!.map((v) => v.toJson()).toList();
    }
    if(this._created!=null)
    data['created'] = this._created;
    if (this._sender != null) {
      data['sender'] = this._sender!.toJson();
    }
    data['users'] = this._users;
    if (this._receiver != null) {
      data['receiver'] = this._receiver!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return "..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
  }

}

class Messages {
  DateTime? _created;
  String? _sender;
  String? _text;
  bool? _read;

  Messages({DateTime? created, String? sender, String? text, bool? read}) {
    this._created = created;
    this._sender = sender;
    this._text = text;
    this._read = read;
  }

  bool? get read => _read;

  set read(bool? value) {
    _read = value;
  }

  DateTime get created => _created??DateTime.now();
  set created(DateTime created) => _created = created;
  String? get sender => _sender;
  set sender(String? sender) => _sender = sender;
  String? get text => _text;
  set text(String? text) => _text = text;

  Messages.fromJson(Map<dynamic, dynamic> json) {
    if((json['created'] is Timestamp))
    _created = parseTime(json['created']);
    _sender = json['sender'].toString();
    _text = json['text'];
    _read = json['read'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created'] = this._created;
    data['sender'] = this._sender;
    data['text'] = this._text;
    data['read'] = this._read;
    return data;
  }
  @override
  String toString() {
    return "..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
  }
}

class Sender {
  int? _id;
  String? _lastName;
  String? _firstName;
  String? _photo;

  Sender({int? id, String? lastName, String? firstName, String? photo}) {
    this._id = id;
    this._lastName = lastName;
    this._firstName = firstName;
    this._photo = photo;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get photo => _photo;
  set photo(String? photo) => _photo = photo;

  Sender.fromJson(Map<dynamic, dynamic> json) {
    _id = json['id'];
    _lastName = json['last_name'];
    _firstName = json['first_name'];
    _photo = json['photo'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['last_name'] = this._lastName;
    data['first_name'] = this._firstName;
    data['photo'] = this._photo;
    return data;
  }
  @override
  String toString() {
    return "..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..........>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
//    return jsonEncode(this.toJson());
  }
}

