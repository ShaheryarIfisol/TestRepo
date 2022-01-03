import 'dart:io';

import 'package:attendo/main.dart';
import 'package:attendo/utilities/helper.dart';
import 'package:url_launcher/url_launcher.dart';
class ScheduleModel {
  int? _id=0;
  int? _event_id=0;
  String? _title;
  String? _detail;
  String? _time="2020-10-29";
  List<String>? _attachments=[];
  List<File?>? _attachmentsFiles=[];

  ScheduleModel({int? id,int? event_id,String? title, String? detail, String? time, List<String>? attachments, List<File?>? attachmentsFiles}) {
    this._id = id;
    this._event_id = event_id;
    this._title = title;
    this._detail = detail;
    this._time = time;
    this._attachments = attachments;
    this._attachmentsFiles = attachmentsFiles;
  }


  int get id => _id??0;

  set id(int value) {
    _id = value;
  }
  int get event_id => _event_id??0;

  set event_id(int value) {
    _event_id = value;
  }

  String get title => _title??"";
  set title(String title) => _title = title;

  String get detail => _detail??"";
  set detail(String detail) => _detail = detail;

  // String get time => "2020-10-29";
  set time(String? time) => _time = time;
  String? get time => _time;

  List<String> get attachments {
    return _attachments= _attachments??[];
  }
  set attachments(List<String> attachments) => _attachments = attachments;

  List<File?>? get attachmentsFiles {
    _attachmentsFiles=_attachmentsFiles??[];
    return _attachmentsFiles;
  }
  set attachmentsFiles(List<File?>? value) {
    _attachmentsFiles = value;
  }

  String getFileNameDisplay(int index2){
    String display="";
    try{
      if(_attachmentsFiles!=null && _attachmentsFiles![index2]!=null)
        display= _attachmentsFiles![index2]!.path.split("/").last;
    }catch(e){print(e);}
    try{
      if(display==null || display.isEmpty && _attachments![index2]!=null)
        display = _attachments![index2].split("/").last;
    }catch(e){print(e);}
    return display;
  }
  bool isLocal(int index2){
    bool local=false;
    // try{
    //   if(_attachmentsFiles!=null && _attachmentsFiles[index2]!=null)
    //     local= true;
    // }catch(e){print(e);}
    try{
      if(_attachments![index2]!=null )
        local =!(Uri.parse(_attachments![index2]).hasAbsolutePath );
      // local =await canLaunch(_attachments[index2]) ;
    }catch(e3){print(e3);}


    log_it("isLocal:"+local.toString());
    return local;
  }
  bool isLocal2(String att){
    bool local=false;
    // try{
    //   if(_attachmentsFiles!=null && _attachmentsFiles[index2]!=null)
    //     local= true;
    // }catch(e){print(e);}
    try{
      if(att!=null )
        local =!(Uri.parse(att).hasAbsolutePath );
      // local =await canLaunch(_attachments[index2]) ;
    }catch(e3){print(e3);}


    log_it("isLocal:"+local.toString());
    return local;
  }

  ScheduleModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'] as int?;
    _event_id = json['event_id'] as int?;
    _title = json['title'];
    _detail = json['detail'];
    _time = json['time'];
    try{
      _attachments = json['attachments'].cast<String>();
      for(var j in json['attachments'])
        {
          _attachmentsFiles!.add(null);
        }
    }catch(e){
      log_it(e);
      _attachments=[];
    }
    // try{
    //   _attachments = json['attachments'].cast<String>();
    // }catch(e){
    //   log_it(e);
    //   _attachments=[];
    // }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this._id!=null && this._id!>0)
      data['id'] = this._id;
    data['detail'] = this._detail??"";
    data['title'] = this._title??this._detail??"";
    data['time'] = this._time;
    data['attachments'] = getAttachedFiles();
    return data;
  }
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if(this._id!=null && this._id>0)
  //     data['id'] = this._id;
  //   data['detail'] = this._detail;
  //   data['title'] = this._title;
  //   data['time'] = this._time;
  //   data['attachments'] = this._attachments;
  //   return data;
  // }
  @override
  String toString() {
    return 'ScheduleModel{_id: $_id,event_id: $event_id, _title: $_title, _time: $_time, _attachments: $_attachments}';
  }

  List<String> getAttachedFiles() {
      List<String> atts=[];
      for(String e in _attachments!)
      {
        if(isLocal2(e))
          atts.add(e);
      }
      return atts;
  }

//   @override
// String toString() {
//   return 'ScheduleModel{_title: $_title, _time: $_time, _attachmentsFiles: $_attachmentsFiles}';
// }

}