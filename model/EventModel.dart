

import 'dart:convert';

import 'package:attendo/main.dart';
import 'package:attendo/model/ScheduleModel.dart';
import 'package:attendo/model/TopicModel.dart';
import 'package:attendo/utilities/Utils.dart';
import 'package:intl/intl.dart';

class EventModel {
  int? _id;
  int? _eventClass;
  String? _eventName;
  String? _eventSlug;
  String? _eventDescription;
  String? _isPublic;
  int? _eventCategoryId;
  String? _eventCountry;
  String? _eventCity;
  String? _eventStreetAddress;
  String? _eventLat;
  String? _eventLng;
  String? _eventCpd;
  String? _eventDate;
  String? _eventStartTime;
  String? _eventEndTime;
  List<String>? _eventPicture;
  List<String>? _eventTopics;
  String? _eventQrCode;
  String? _eventWebUrl;
  String? _eventLink;
  int? _expectedGuests;
  String? _eventStatus;
  String? _status;
  String? _eventApprovalDate;
  String? _hasLogbook;
  String? _hasFeedback;
  String? _hasComment;
  String? _hasQRCode;
  String? _hasExhibitor;
  String? _sameSchedule;
  String? _sameExhibitor;
  String? _sameLogbook;
  String? _sameFeedback;
  String? _hasSchedule;
  String? _certificate;
  String? _eventCode;
  String? _deviceType;
  String? _isFeatured;
  String? _isRepeated;
  String? _ticketUrl;
  bool? _userPurchasedTicket;
  bool? _isInterested;
  List<Exhibitors>? _exhibitors;
  List<Logbook>? _logbook;
  List<Logbook>? _feedback;
  List<ScheduleModel>? _schedule ;
  Organiser? _organiser;
  EventTicket? _eventTicket;
  EventRepeatData? _eventRepeatData;
  Category? _category;
  List<Attendance>? _attendance;
  List<Interested>? _interested;
  List<Tags>? _tags;
  List<TopicModel>? _topics;

  EventModel(
      {int? id,
        int? eventClass,
        String? eventName,
        String? eventSlug,
        String? eventDescription,
        String? isPublic,
        int? eventCategoryId,
        String? eventCountry,
        String? eventCity,
        String? eventStreetAddress,
        String? eventLat,
        String? eventLng,
        String? eventCpd,
        String? eventDate,
        String? eventStartTime,
        String? eventEndTime,
        List<String>? eventPicture,
        List<String>? eventTopics,
        String? eventQrCode,
        String? eventWebUrl,
        String? event_link,
        int? expectedGuests,
        String? eventStatus,
        String? eventApprovalDate,
        String? hasLogbook,
        String? hasComment,
        String? hasFeedback,
        String? hasQRCode,
        String? hasExhibitor,
        String? sameSchedule,
        String? sameExhibitor,
        String? sameLogbook,
        String? sameFeedback,
        String? hasSchedule,
        String? certificate,
        String? eventCode,
        String? deviceType,
        String? isFeatured,
        String? ticketUrl,
        String? userPurchasedTicket,
        bool? isInterested,
        String? isRepeated,
        List<Exhibitors>? exhibitors,
        List<Logbook>? logbook,
        List<Logbook>? feedback,
        List<ScheduleModel>? schedule,
        Organiser? organiser,
        EventTicket? eventTicket,
        EventRepeatData? eventRepeatData,
        Category? category,
        List<Attendance>? attendance,
        List<Interested>? interested,
        List<Tags>? tags,
        List<TopicModel>? topics,
      }) {
    this._id = id;
    this._eventClass = eventClass;
    this._eventName = eventName;
    this._eventSlug = eventSlug;
    this._eventDescription = eventDescription;
    this._isPublic = isPublic;
    this._eventCategoryId = eventCategoryId;
    this._eventCountry = eventCountry;
    this._eventCity = eventCity;
    this._eventStreetAddress = eventStreetAddress;
    this._eventLat = eventLat;
    this._eventLng = eventLng;
    this._eventCpd = eventCpd;
    this._eventDate = eventDate;
    this._eventStartTime = eventStartTime;
    this._eventEndTime = eventEndTime;
    this._eventPicture = eventPicture;
    this._eventTopics = eventTopics;
    this._eventQrCode = eventQrCode;
    this._eventWebUrl = eventWebUrl;
    this._eventLink = event_link;
    this._expectedGuests = expectedGuests;
    this._eventStatus = eventStatus;
    this._status = status;
    this._eventApprovalDate = eventApprovalDate;
    this._hasLogbook = hasLogbook;
    this._hasComment = hasComment;
    this._hasFeedback = hasFeedback;
    this._hasQRCode = hasQRCode;
    this._hasExhibitor = hasExhibitor;
    this._sameSchedule = sameSchedule;
    this._sameExhibitor = sameExhibitor;
    this._sameLogbook = sameLogbook;
    this._sameFeedback = sameFeedback;
    this._hasSchedule = hasSchedule;
    this._certificate = certificate;
    this._eventCode = eventCode;
    this._deviceType = deviceType;
    this._isFeatured = isFeatured;
    this._isInterested = isInterested;
    this._ticketUrl = ticketUrl;
    this._userPurchasedTicket = _userPurchasedTicket;
    this._isInterested = isInterested;
    this._isRepeated = isRepeated;
    this._exhibitors = exhibitors;
    this._logbook = logbook;
    this._feedback = feedback;
    this._schedule = schedule;
    this._organiser = organiser;
    this._eventTicket = eventTicket;
    this._eventRepeatData = eventRepeatData;
    this._category = category;
    this._attendance = attendance;
    this._interested = interested;
    this._tags = tags;
    this._topics = topics;
  }

  String getEventMainPicture(){
    String pic= "";
    try{
      pic=_eventPicture![0];
      log_it("getEventMainPicture:"+pic);
    }catch(e){
      pic="";
      logger.e(e.toString());
    }
    return pic;
  }


  EventRepeatData get eventRepeatData => _eventRepeatData??EventRepeatData();
  set eventRepeatData(EventRepeatData value) {_eventRepeatData = value;}
  EventTicket? get eventTicket => _eventTicket;
  set eventTicket(EventTicket? value) {_eventTicket = value;}


  int get id => _id??0;
  set id(int id) => _id = id;


  String? get eventLink => _eventLink??"";

  set eventLink(String? value) {
    _eventLink = value;
  }

  List<TopicModel>? get topics => _topics=_topics??[];

  set topics(List<TopicModel>? value) {
    _topics = value;
  }

  List<String>? get eventTopics => _eventTopics=_eventTopics??[];

  set eventTopics(List<String>? value) {
    _eventTopics = value;
  }

  int? get eventClass => _eventClass;
  set eventClass(int? eventClass) => _eventClass = eventClass;
  String? get eventName => _eventName;
  set eventName(String? eventName) => _eventName = eventName;
  String? get eventSlug => _eventSlug;
  String get hasComment => _hasComment??'';
  set hasComment(String value) {
    _hasComment = value;
  }
  set eventSlug(String? eventSlug) => _eventSlug = eventSlug;
  String? get eventDescription => _eventDescription;
  set eventDescription(String? eventDescription) =>
      _eventDescription = eventDescription;
  String get isPublic => _isPublic=_isPublic??'yes';
  set isPublic(String isPublic) => _isPublic = isPublic;
  int? get eventCategoryId => _eventCategoryId;
  set eventCategoryId(int? eventCategoryId) =>
      _eventCategoryId = eventCategoryId;
  String? get eventCountry => _eventCountry;
  set eventCountry(String? eventCountry) => _eventCountry = eventCountry;
  String? get eventCity => _eventCity;
  set eventCity(String? eventCity) => _eventCity = eventCity;
  String? get eventStreetAddress => _eventStreetAddress;
  set eventStreetAddress(String? eventStreetAddress) =>
      _eventStreetAddress = eventStreetAddress;
  String? get eventLat => _eventLat;
  set eventLat(String? eventLat) => _eventLat = eventLat;
  String? get eventLng => _eventLng;
  set eventLng(String? eventLng) => _eventLng = eventLng;
  String? get eventCpd => _eventCpd=_eventCpd??"0";
  set eventCpd(String? eventCpd) => _eventCpd = eventCpd;
  String? get eventDate => _eventDate;
  set eventDate(String? eventDate) => _eventDate = eventDate;
  String? get eventStartTime => _eventStartTime;
  set eventStartTime(String? eventStartTime) => _eventStartTime = eventStartTime;
  String? get eventEndTime => _eventEndTime;
  set eventEndTime(String? eventEndTime) => _eventEndTime = eventEndTime;
  List<String>? get eventPicture => _eventPicture;
  set eventPicture(List<String>? eventPicture) => _eventPicture = eventPicture;
  String? get eventQrCode => _eventQrCode;
  set eventQrCode(String? eventQrCode) => _eventQrCode = eventQrCode;
  String get eventWebUrl {
    if(_eventWebUrl==null || _eventWebUrl!.isEmpty)
      return 'https://www.google.com';
    return _eventWebUrl??"";
  }
  set eventWebUrl(String? eventWebUrl) => _eventWebUrl = eventWebUrl;
  int? get expectedGuests => _expectedGuests;
  set expectedGuests(int? expectedGuests) => _expectedGuests = expectedGuests;
  String? get eventStatus => _eventStatus;
  set eventStatus(String? eventStatus) => _eventStatus = eventStatus;
  String get status => _status??'';
  set status(String value) {
    _status = value;
  }
  String? get eventApprovalDate => _eventApprovalDate;
  set eventApprovalDate(String? eventApprovalDate) =>
      _eventApprovalDate = eventApprovalDate;
  String? get hasLogbook => _hasLogbook;
  set hasLogbook(String? hasLogbook) => _hasLogbook = hasLogbook;
  String? get hasFeedback => _hasFeedback;
  set hasFeedback(String? hasFeedback) => _hasFeedback = hasFeedback;
  String? get hasQRCode => _hasQRCode;
  set hasQRCode(String? hasQRCode) => _hasQRCode = hasQRCode;
  String? get hasExhibitor => _hasExhibitor;
  set hasExhibitor(String? hasExhibitor) => _hasExhibitor = hasExhibitor;
  String? get sameSchedule => _sameSchedule;
  set sameSchedule(String? sameSchedule) => _sameSchedule = sameSchedule;
  String? get sameExhibitor => _sameExhibitor;
  set sameExhibitor(String? sameExhibitor) => _sameExhibitor = sameExhibitor;
  String? get sameLogbook => _sameLogbook;
  set sameLogbook(String? sameLogbook) => _sameLogbook = sameLogbook;
  String? get sameFeedback => _sameFeedback;
  set sameFeedback(String? sameFeedback) => _sameFeedback = sameFeedback;
  String? get hasSchedule => _hasSchedule;
  set hasSchedule(String? hasSchedule) => _hasSchedule = hasSchedule;
  String? get certificate => _certificate;
  set certificate(String? certificate) => _certificate = certificate;
  String? get eventCode => _eventCode;
  set eventCode(String? eventCode) => _eventCode = eventCode;
  String? get deviceType => _deviceType;
  set deviceType(String? deviceType) => _deviceType = deviceType;
  String? get isFeatured => _isFeatured;
  set isFeatured(String? isFeatured) => _isFeatured = isFeatured;
  bool get isInterested => _isInterested??false;
  set isInterested(bool isInterested) => _isInterested = isInterested;
  List<Exhibitors>? get exhibitors => _exhibitors;
  set exhibitors(List<Exhibitors>? exhibitors) => _exhibitors = exhibitors;
  List<Logbook>? get logbook => _logbook;
  set logbook(List<Logbook>? logbook) => _logbook = logbook;
  Organiser? get organiser => _organiser;
  set organiser(Organiser? organiser) => _organiser = organiser;
  Category? get category => _category;
  set category(Category? category) => _category = category;
  List<Attendance>? get attendance => _attendance;
  set attendance(List<Attendance>? attendance) => _attendance = attendance;
  List<Interested>? get interested => _interested;
  set interested(List<Interested>? interested) => _interested = interested;
  List<Tags> get tags => _tags??[];
  set tags(List<Tags> tags) => _tags = tags;


  String? get ticketUrl => _ticketUrl;

  set ticketUrl(String? value) {
    _ticketUrl = value;
  }

  String? get isRepeated => _isRepeated;

  set isRepeated(String? value) {
    _isRepeated = value;
  }

  List<Logbook>? get feedback => _feedback;

  set feedback(List<Logbook>? value) {
    _feedback = value;
  }
  List<ScheduleModel>? get schedule => _schedule;

  set schedule(List<ScheduleModel>? value) {
    _schedule = value;
  }



  // from json method
  EventModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _eventClass = json['event_class'];
    _eventName = json['event_name'];
    _eventSlug = json['event_slug'];
    _eventDescription = json['event_description'];

    try {
      _isPublic = json['is_public'];
    }
    catch (e) {
      log_it(e.toString());
    }
    try {
      _eventCategoryId = int.tryParse(json['event_category_id']) ?? 0;
    }
    catch (e) {
      log_it(e.toString());
    }
    try {
      _eventCountry = json['event_country'].toString();
    } catch (e) {
      log_it(e);
    }
    try {
      _eventCity = json['event_city'].toString();
    } catch (e) {
      log_it(e);
    }
    _eventStreetAddress = json['event_street_address'];
    _eventLat = json['event_lat'];
    _eventLng = json['event_lng'];
    try {
      _eventCpd = json['event_cpd'];
    } catch (e) {
      // TODO
    }
    _eventDate = json['event_date'];
    _eventStartTime = json['event_start_time'];
    _eventEndTime = json['event_end_time'];
    // _eventPicture = json['event_picture'];
    _eventPicture = [];
    if (json['event_picture'] != null){
      json['event_picture'].forEach((v) {
        _eventPicture!.add(v);
      });
    }
    if (json['event_topics'] != null) {
      _eventTopics = [];
      json['event_topics'].forEach((v) {
        _eventTopics!.add(v);
      });
    }
    _eventQrCode = json['event_qr_code'];
    _eventWebUrl = json['event_web_url'].toString();
    _eventLink = json['event_link'].toString();
    try{_expectedGuests = int.tryParse((json['expected_guests']??0).toString())??0;}
    catch(e){print(e.toString() );}
    // try{_expectedGuests = int.tryParse((json['expected_guests']??0).toString())??0;}
    // catch(e){print(e.toString() );}
    _eventStatus = json['event_status'];
    _status = json['status'];
    _eventApprovalDate = json['event_approval_date'];
    _hasLogbook = json['has_logbook'];
    _hasFeedback = json['has_feedback'];
    _hasComment = json['hasComment'];
    _hasQRCode = json['has_qr_code'];
    _hasExhibitor = json['has_exhibitor'];
    _sameSchedule = json['same_schedule'];
    _sameExhibitor = json['same_exhibitor'];
    _sameLogbook = json['same_logbook'];
    _sameFeedback = json['same_feedback'];
    _hasSchedule = json['has_schedule'];
    _certificate = json['certificate'];
    _eventCode = json['event_code'];
    _deviceType = json['device_type'];
    _isFeatured = json['is_featured'];
    _isInterested = json['is_interested'];
    _isRepeated = json['is_repeated'];
    _userPurchasedTicket = json['user_purchased_ticket'];
    _ticketUrl = json['ticket_url'];
    if (json['exhibitors'] != null) {
      _exhibitors = <Exhibitors>[];
      json['exhibitors'].forEach((v) {
        _exhibitors!.add(new Exhibitors.fromJson(v));
      });
    }
    if (json['logbook'] != null) {
      _logbook =  <Logbook>[];
      json['logbook'].forEach((v) {
        _logbook!.add(new Logbook.fromJson(v));
      });
    }
    if (json['feedback'] != null) {
      _feedback = <Logbook>[];
      json['feedback'].forEach((v) {
        _feedback!.add(new Logbook.fromJson(v));
      });
    }
    if (json['schedule'] != null) {
      _schedule = <ScheduleModel>[];
      json['schedule'].forEach((v) {
        _schedule!.add(new ScheduleModel.fromJson(v));
      });
    }
    _organiser = json['organiser'] != null
        ? new Organiser.fromJson(json['organiser'])
        : null;
    _eventTicket = json['event_ticket'] != null
        ? new EventTicket.fromJson(json['event_ticket'])
        : null;
    _category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    _eventRepeatData = json['event_repeat_data'] != null && !(json['event_repeat_data'] is List)
        ? new EventRepeatData.fromJson(json['event_repeat_data'])
        : null;
    if (json['attendance'] != null) {
      _attendance = <Attendance>[];
      json['attendance'].forEach((v) {
        _attendance!.add(new Attendance.fromJson(v));
      });
    }
    if (json['interested'] != null) {
      _interested =  <Interested>[];
      json['interested'].forEach((v) {
        _interested!.add(new Interested.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      _tags =  <Tags>[];
      json['tags'].forEach((v) {
        _tags!.add(new Tags.fromJson(v));
      });
    }
    if (json['topics'] != null) {
      _topics =  <TopicModel>[];
      json['topics'].forEach((v) {
        _topics!.add(new TopicModel.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['event_class'] = this._eventClass;
    data['event_name'] = this._eventName;
    data['event_slug'] = this._eventSlug;
    data['event_description'] = this._eventDescription;
    data['is_public'] = this._isPublic;
    data['event_category_id'] = this._eventCategoryId;
    data['event_country'] = this._eventCountry;
    data['event_city'] = this._eventCity;
    data['event_street_address'] = this._eventStreetAddress;
    data['event_lat'] = this._eventLat;
    data['event_lng'] = this._eventLng;
    data['event_cpd'] = this._eventCpd;
    data['event_date'] = this._eventDate;
    data['event_start_time'] = this._eventStartTime;
    data['event_end_time'] = this._eventEndTime;
    data['event_picture'] = this._eventPicture;
    data['event_topics'] = this._eventTopics;
    data['event_qr_code'] = this._eventQrCode;
    data['event_web_url'] = this._eventWebUrl;
    data['event_link'] = this._eventLink;
    data['expected_guests'] = this._expectedGuests;
    data['event_status'] = this._eventStatus;
    data['status'] = this._status;
    data['event_approval_date'] = this._eventApprovalDate;
    data['has_logbook'] = this._hasLogbook;
    data['has_feedback'] = this._hasFeedback;
    data['hasComment'] = this._hasComment;
    data['has_qr_code'] = this._hasQRCode;
    data['has_exhibitor'] = this._hasExhibitor;
    data['same_schedule'] = this._sameSchedule;
    data['same_exhibitor'] = this._sameExhibitor;
    data['same_logbook'] = this._sameLogbook;
    data['same_feedback'] = this._sameFeedback;
    data['has_schedule'] = this._hasSchedule;
    data['certificate'] = this._certificate;
    data['event_code'] = this._eventCode;
    data['device_type'] = this._deviceType;
    data['is_featured'] = this._isFeatured;
    data['is_interested'] = this._isInterested;
    data['is_repeated'] = this._isRepeated;
    data['user_purchased_ticket'] = this._userPurchasedTicket;
    data['ticket_url'] = this._ticketUrl;
    if (this._exhibitors != null) {
      data['exhibitors'] = this._exhibitors!.map((v) => v.toJson()).toList();
    }
    if (this._logbook != null) {
      data['logbook'] = this._logbook!.map((v) => v.toJson()).toList();
    }
    if (this._feedback != null) {
      data['feedback'] = this._feedback!.map((v) => v.toJson()).toList();
    }
    if (this._schedule != null) {
      data['schedule'] = this._schedule!.map((v) => v.toJson()).toList();
    }
    if (this._organiser != null) {
      data['organiser'] = this._organiser!.toJson();
    }
    if (this._eventTicket != null) {
      data['event_ticket'] = this._eventTicket!.toJson();
    }
    if (this._category != null) {
      data['category'] = this._category!.toJson();
    }
    if (this._eventRepeatData != null) {
      data['event_repeat_data'] = this._eventRepeatData!.toJson();
    }
    if (this._attendance != null) {
      data['attendance'] = this._attendance!.map((v) => v.toJson()).toList();
    }
    if (this._interested != null) {
      data['interested'] = this._interested!.map((v) => v.toJson()).toList();
    }
    if (this._tags != null) {
      data['tags'] = this._tags!.map((v) => v.toJson()).toList();
    }
    if (this._topics != null) {
      data['topics'] = this._topics!.map((v) => v.toJson()).toList();
    }
    return data;
  }


  @override
  String toString() {
    return 'EventModel{_id: $_id, _eventClass: $_eventClass, _eventName: $_eventName, _eventSlug: $_eventSlug, _eventDescription: $_eventDescription, _isPublic: $_isPublic, _eventCategoryId: $_eventCategoryId, _eventCountry: $_eventCountry, _eventCity: $_eventCity, _eventStreetAddress: $_eventStreetAddress, _eventLat: $_eventLat, _eventLng: $_eventLng, _eventCpd: $_eventCpd, _eventDate: $_eventDate, _eventStartTime: $_eventStartTime, _eventEndTime: $_eventEndTime, _eventPicture: $_eventPicture, _eventTopics: $_eventTopics, _eventQrCode: $_eventQrCode, _eventWebUrl: $_eventWebUrl, _eventLink: $_eventLink, _expectedGuests: $_expectedGuests, _eventStatus: $_eventStatus, _status: $_status, _eventApprovalDate: $_eventApprovalDate, _hasLogbook: $_hasLogbook, _hasFeedback: $_hasFeedback, _hasComment: $_hasComment, _hasQRCode: $_hasQRCode, _hasExhibitor: $_hasExhibitor, _sameSchedule: $_sameSchedule, _sameExhibitor: $_sameExhibitor, _sameLogbook: $_sameLogbook, _sameFeedback: $_sameFeedback, _hasSchedule: $_hasSchedule, _certificate: $_certificate, _eventCode: $_eventCode, _deviceType: $_deviceType, _isFeatured: $_isFeatured, _isRepeated: $_isRepeated, _ticketUrl: $_ticketUrl, _userPurchasedTicket: $_userPurchasedTicket, _isInterested: $_isInterested, _exhibitors: $_exhibitors, _logbook: $_logbook, _feedback: $_feedback, _schedule: $_schedule, _organiser: $_organiser, _eventTicket: $_eventTicket, _eventRepeatData: $_eventRepeatData, _category: $_category, _attendance: $_attendance, _interested: $_interested, _tags: $_tags, _topics: $_topics}';
  }

  bool? get userPurchasedTicket => _userPurchasedTicket??false;

  set userPurchasedTicket(bool? value) {
    _userPurchasedTicket = value;
  }
}

class Exhibitors {
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _website;
  String? _company;
  String? _description;
  String? _picture;
  String? _qrCode;
  int? _userId;
  int? _organisationId;
  String? _status;

  Exhibitors(
      {int? id,
        String? name,
        String? email,
        String? phone,
        String? website,
        String? company,
        String? description,
        String? picture,
        String? qrCode,
        int? userId,
        int? organisationId,
        String? status}) {
    this._id = id;
    this._name = name;
    this._email = email;
    this._phone = phone;
    this._website = website;
    this._company = company;
    this._description = description;
    this._picture = picture;
    this._qrCode = qrCode;
    this._userId = userId;
    this._organisationId = organisationId;
    this._status = status;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get website => _website;
  set website(String? website) => _website = website;
  String? get company => _company;
  set company(String? company) => _company = company;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get picture => _picture??'http://i.pravatar.cc/11';
  set picture(String? picture) => _picture = picture;
  String? get qrCode => _qrCode;
  set qrCode(String? qrCode) => _qrCode = qrCode;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get organisationId => _organisationId;
  set organisationId(int? organisationId) => _organisationId = organisationId;
  String? get status => _status;
  set status(String? status) => _status = status;

  Exhibitors.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _website = json['website'];
    _company = json['company'];
    _description = json['description'];
    _picture = json['picture'];
    _qrCode = json['qr_code'];
    _userId = json['user_id'];
    _organisationId = json['organisation_id'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['email'] = this._email;
    data['phone'] = this._phone;
    data['website'] = this._website;
    data['company'] = this._company;
    data['description'] = this._description;
    data['picture'] = this._picture;
    data['qr_code'] = this._qrCode;
    data['user_id'] = this._userId;
    data['organisation_id'] = this._organisationId;
    data['status'] = this._status;
    return data;
  }
}

class Logbook {
  int? _id;
  int? _eventId;
  int? _chosenAnswer;
  String? _questionIndex;
  String? _question;
  String? _type;
  String? _options;
  List? _optionsList=[];
  String? _answer;

  Logbook(
      {int? id,
        int? eventId,
        String? questionIndex,
        String? question,
        String? type,
        String? options,
        List? optionsList,
        String? text}) {
    this._id = id;
    this._eventId = eventId;
    this._questionIndex = questionIndex;
    this._question = question;
    this._type = type;
    this._options = options;
    this._optionsList = optionsList;
    this._answer = text;
  }
  Logbook.multi(
      {
        String? question,
        String? type,
        String? options}) {
    this._question = question;
    this._type = type;
    this._options = options;
  }
  Logbook.text(
      {
        String? question,
        String? type}) {
    this._question = question;
    this._type = type;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get eventId => _eventId;
  set eventId(int? eventId) => _eventId = eventId;

  int? get chosenAnswer => _chosenAnswer;

  set chosenAnswer(int? value) {
    _chosenAnswer = value;
  }

  String? get questionIndex => _questionIndex;
  set questionIndex(String? questionIndex) => _questionIndex = questionIndex;
  String? get question => _question;
  set question(String? question) => _question = question;
  String get type => _type??'';
  set type(String type) => _type = type;
  String? get options => _options;
  set options(String? options) => _options = options;
  List? get optionsList{
    if(options==null || options!.isEmpty)
      return [];
    else {
      // var arr = jsonDecode(options);
      var arr = json.decode(options!);

      printLog("arr ${arr.toString()}");
      return arr;
      // options =options.replaceFirst("[", "");
      // if(options[options.length-1]=="]")
      //   options.substring(0,options.length-2);
      // this.optionsList = optionsList.sp
    }
  }
  set optionsList(List? optionsList) => _optionsList = optionsList;


  String get text => _answer??'';

  set text(String value) {
    _answer = value;
  }

  Logbook.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _eventId = json['event_id'];
    _questionIndex = json['question_index'].toString();
    _question = json['question'];
    _type = json['type'];
    _options = json['options'];
    _answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(_id!=null)
      data['id'] = this._id;
    if(_eventId!=null)
      data['event_id'] = this._eventId;
    if(_questionIndex!=null)
      data['question_index'] = this._questionIndex;
    data['question'] = this._question;
    data['type'] = this._type;
    if(_options!=null && _options!.isNotEmpty)
    {
      data['options'] = this.options!.replaceFirst("[", "").replaceAll("]", "").split(',');
      if(data['options'].length==0)
        data['options']="";
    }
    data['answer'] = this._answer;
    return data;
  }

  Map<String, dynamic> toJsonInternal() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(_id!=null)
      data['id'] = this._id;
    if(_eventId!=null)
      data['event_id'] = this._eventId;
    if(_questionIndex!=null)
      data['question_index'] = this._questionIndex;
    data['question'] = this._question;
    data['type'] = this._type;
    if(_options!=null)
      data['options'] = this._options;
    data['answer'] = this._answer;
    return data;
  }
  Map<String, dynamic> toJsonForAPI() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if(_id!=null)
      data['id'] = this._id;
    // if(this.type.toLowerCase()=='text')
    data['answer'] = this._answer;
    // else data['answer']= '${optionsList[_chosenAnswer]}';
    // else data['answer']= ['${this._chosenAnswer}'];
    printLog('data: ${data}');
    return data;
  }
  List encodeListToJson(List<Logbook> list) {
    List jsonList = [];
    list.map((item) => jsonList.add(item.toJson())).toList();
    return jsonList;
  }
  @override
  String toString() {
    return 'Logbook{_id: $_id, _eventId: $_eventId, _questionIndex: $_questionIndex, _question: $_question, _type: $_type, _options: $_options, answer: $_answer}';
  }
  String? get answer => _answer;
  set answer(String? value) {
    _answer = value;
  }
  double answerValue (){
    double val=0.0;
    try{
      val=double.parse(_answer!);
    }catch (e){printLog(e);
    val=0.0;}
    return val;
  }
}
class EventRepeatData {
  String? _repeatType;
  int? _endsOn;
  String? _intervalEndDate;
  int? _occurrences;
  int? _interval;
  int? _intervalType;
  String? _repeatOn;

  EventRepeatData(
      {String? repeatType,
        int? endsOn,
        String? intervalEndDate,
        int? occurrences,
        int? interval,
        int? intervalType,
        String? repeatOn}) {
    this._repeatType = repeatType;
    this._endsOn = endsOn;
    this._intervalEndDate = intervalEndDate;
    this._occurrences = occurrences;
    this._interval = interval;
    this._intervalType = intervalType;
    this._repeatOn = repeatOn;
  }

  String? get repeatType => _repeatType;
  set repeatType(String? repeatType) => _repeatType = repeatType;
  int? get endsOn => _endsOn;
  set endsOn(int? endsOn) => _endsOn = endsOn;
  String? get intervalEndDate => _intervalEndDate;
  set intervalEndDate(String? intervalEndDate) =>
      _intervalEndDate = intervalEndDate;
  int get occurrences => _occurrences??1;
  set occurrences(int occurrences) => _occurrences = occurrences;
  int? get interval {
    if(_interval==null || _interval==0)
      return 1;
    else return _interval;
  }
  set interval(int? interval) => _interval = interval;
  int get intervalType => _intervalType??1;
  set intervalType(int intervalType) => _intervalType = intervalType;
  String? get repeatOn => _repeatOn;
  set repeatOn(String? repeatOn) => _repeatOn = repeatOn;

  EventRepeatData.fromJson(Map<String, dynamic> json) {
    if(json['repeat_type']!=null)
      _repeatType = json['repeat_type'];
    if(json['ends_on']!=null)
      _endsOn = json['ends_on'];
    if(json['interval_end_date']!=null)
      _intervalEndDate = json['interval_end_date'];
    if(json['occurrences']!=null)
      _occurrences = json['occurrences'];
    if(json['interval']!=null)
      _interval = json['interval'];
    if(json['interval_type']!=null)
      _intervalType = json['interval_type'];
    if(json['repeat_on']!=null)
      _repeatOn = json['repeat_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['repeat_type'] = this._repeatType;
    data['ends_on'] = this._endsOn;
    data['interval_end_date'] = this._intervalEndDate;
    data['occurrences'] = this._occurrences;
    data['interval'] = this._interval;
    data['interval_type'] = this._intervalType;
    data['repeat_on'] = this._repeatOn;
    return data;
  }

  @override
  String toString() {
    return 'EventRepeatData{_repeatType: $_repeatType, _endsOn: $_endsOn, _intervalEndDate: $_intervalEndDate, _occurrences: $_occurrences, _interval: $_interval, _intervalType: $_intervalType, _repeatOn: $_repeatOn}';
  }
}


// class Schedule {
//   int _id;
//   int _eventId;
//   String _time;
//   String _detail;
//   String _order;
//
//   Schedule({int id, int eventId, String time, String detail, String order}) {
//     this._id = id;
//     this._eventId = eventId;
//     this._time = time;
//     this._detail = detail;
//     this._order = order;
//   }
//
//   int get id => _id;
//   set id(int id) => _id = id;
//   int get eventId => _eventId;
//   set eventId(int eventId) => _eventId = eventId;
//   String get time => _time;
//   set time(String time) => _time = time;
//   String get detail => _detail;
//   set detail(String detail) => _detail = detail;
//   String get order => _order;
//   set order(String order) => _order = order;
//
//   Schedule.fromJson(Map<String, dynamic> json) {
//     _id = json['id'];
//     _eventId = json['event_id'];
//     _time = json['time'];
//     _detail = json['detail'];
//     _order = json['order'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this._id;
//     data['event_id'] = this._eventId;
//     data['time'] = this._time;
//     data['detail'] = this._detail;
//     data['order'] = this._order;
//     return data;
//   }
//
//   @override
//   String toString() {
//     return 'Schedule{_eventId: $_eventId}';
//   }
//
// }
class Organiser {
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
  String? _deviceToken;
  String? _deviceType;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  String? _cpdHours;

  Organiser(
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
        String? deviceToken,
        String? deviceType,
        String? registrationDate,
        String? lastLoginDate,
        String? status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        String? cpdHours}) {
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
    this._deviceToken = deviceToken;
    this._deviceType = deviceType;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._status = status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._cpdHours = cpdHours;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
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
  int? get organisationId => _organisationId;
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
  String? get profileVisibilityStatus => _profileVisibilityStatus;
  set profileVisibilityStatus(String? profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  String? get cpdHours => _cpdHours;
  set cpdHours(String? cpdHours) => _cpdHours = cpdHours;

  Organiser.fromJson(Map<String, dynamic> json) {
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
    _organisationId = json['organisation_id'];
    _deviceToken = json['device_token'];
    _deviceType = json['device_type'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _status = json['status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
    _cpdHours = json['cpd_hours'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    data['type'] = this._type;
    data['profession'] = this._profession;
    data['address'] = this._address;
    data['city'] = this._city;
    data['phone'] = this._phone;
    data['picture'] = this._picture;
    data['organisation_id'] = this._organisationId;
    data['device_token'] = this._deviceToken;
    data['device_type'] = this._deviceType;
    data['registration_date'] = this._registrationDate;
    data['last_login_date'] = this._lastLoginDate;
    data['status'] = this._status;
    data['user_registration_status'] = this._userRegistrationStatus;
    data['profile_visibility_status'] = this._profileVisibilityStatus;
    data['cpd_hours'] = int.parse(this._cpdHours??'0');
    return data;
  }
}
class Category {
  int? _id;
  String? _name;

  Category({int? id, String? name}) {
    this._id = id;
    this._name = name;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;

  Category.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}
class Tags {
  int? _id;
  String? _name;
  String? _slug;

  Tags({int? id, String? name, String? slug}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;

  Tags.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    return data;
  }
}
class Attendance {
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
  String? _deviceToken;
  String? _deviceType;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  String? _cpdHours;

  Attendance(
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
        String? deviceToken,
        String? deviceType,
        String? registrationDate,
        String? lastLoginDate,
        String? status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        String? cpdHours}) {
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
    this._deviceToken = deviceToken;
    this._deviceType = deviceType;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._status = status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._cpdHours = cpdHours;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
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
  int? get organisationId => _organisationId;
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
  String? get profileVisibilityStatus => _profileVisibilityStatus;
  set profileVisibilityStatus(String? profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  String? get cpdHours => _cpdHours;
  set cpdHours(String? cpdHours) => _cpdHours = cpdHours;

  Attendance.fromJson(Map<String, dynamic> json) {
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
    _organisationId = json['organisation_id'];
    _deviceToken = json['device_token'];
    _deviceType = json['device_type'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _status = json['status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
    _cpdHours = json['cpd_hours'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    data['type'] = this._type;
    data['profession'] = this._profession;
    data['address'] = this._address;
    data['city'] = this._city;
    data['phone'] = this._phone;
    data['picture'] = this._picture;
    data['organisation_id'] = this._organisationId;
    data['device_token'] = this._deviceToken;
    data['device_type'] = this._deviceType;
    data['registration_date'] = this._registrationDate;
    data['last_login_date'] = this._lastLoginDate;
    data['status'] = this._status;
    data['user_registration_status'] = this._userRegistrationStatus;
    data['profile_visibility_status'] = this._profileVisibilityStatus;
    data['cpd_hours'] = int.parse(this._cpdHours??'0');
    return data;
  }
}
class Interested {
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
  String? _deviceToken;
  String? _deviceType;
  String? _registrationDate;
  String? _lastLoginDate;
  String? _status;
  String? _userRegistrationStatus;
  String? _profileVisibilityStatus;
  String? _cpdHours;

  Interested(
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
        String? deviceToken,
        String? deviceType,
        String? registrationDate,
        String? lastLoginDate,
        String? status,
        String? userRegistrationStatus,
        String? profileVisibilityStatus,
        String? cpdHours}) {
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
    this._deviceToken = deviceToken;
    this._deviceType = deviceType;
    this._registrationDate = registrationDate;
    this._lastLoginDate = lastLoginDate;
    this._status = status;
    this._userRegistrationStatus = userRegistrationStatus;
    this._profileVisibilityStatus = profileVisibilityStatus;
    this._cpdHours = cpdHours;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
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
  int? get organisationId => _organisationId;
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
  String? get profileVisibilityStatus => _profileVisibilityStatus;
  set profileVisibilityStatus(String? profileVisibilityStatus) =>
      _profileVisibilityStatus = profileVisibilityStatus;
  String? get cpdHours => _cpdHours;
  set cpdHours(String? cpdHours) => _cpdHours = cpdHours;

  Interested.fromJson(Map<String, dynamic> json) {
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
    _organisationId = json['organisation_id'];
    _deviceToken = json['device_token'];
    _deviceType = json['device_type'];
    _registrationDate = json['registration_date'];
    _lastLoginDate = json['last_login_date'];
    _status = json['status'];
    _userRegistrationStatus = json['user_registration_status'];
    _profileVisibilityStatus = json['profile_visibility_status'];
    _cpdHours = json['cpd_hours'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['email'] = this._email;
    data['type'] = this._type;
    data['profession'] = this._profession;
    data['address'] = this._address;
    data['city'] = this._city;
    data['phone'] = this._phone;
    data['picture'] = this._picture;
    data['organisation_id'] = this._organisationId;
    data['device_token'] = this._deviceToken;
    data['device_type'] = this._deviceType;
    data['registration_date'] = this._registrationDate;
    data['last_login_date'] = this._lastLoginDate;
    data['status'] = this._status;
    data['user_registration_status'] = this._userRegistrationStatus;
    data['profile_visibility_status'] = this._profileVisibilityStatus;
    data['cpd_hours'] = int.parse(this._cpdHours??'0') ;
    return data;
  }
}
class EventTicket {
  int? _id;
  String? _ticketNumber;
  int? _eventId;
  int? _price;
  String? _promoCode;
  String? _deletedAt;
  String? _createdAt;
  String? _updatedAt;

  EventTicket(
      {int? id,
        String? ticketNumber,
        int? eventId,
        int? price,
        String? promoCode,
        String? deletedAt,
        String? createdAt,
        String? updatedAt}) {
    this._id = id;
    this._ticketNumber = ticketNumber;
    this._eventId = eventId;
    this._price = price;
    this._promoCode = promoCode;
    this._deletedAt = deletedAt;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get ticketNumber => _ticketNumber;
  set ticketNumber(String? ticketNumber) => _ticketNumber = ticketNumber;
  int? get eventId => _eventId;
  set eventId(int? eventId) => _eventId = eventId;
  int? get price => _price;
  set price(int? price) => _price = price;
  String? get promoCode => _promoCode;
  set promoCode(String? promoCode) => _promoCode = promoCode;
  String? get deletedAt => _deletedAt;
  set deletedAt(String? deletedAt) => _deletedAt = deletedAt;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  EventTicket.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _ticketNumber = json['ticket_number'];
    _eventId = json['event_id'];
    _price = json['price'];
    _promoCode = json['promo_code'];
    _deletedAt = json['deleted_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['ticket_number'] = this._ticketNumber;
    data['event_id'] = this._eventId;
    data['price'] = this._price;
    data['promo_code'] = this._promoCode;
    data['deleted_at'] = this._deletedAt;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }

  @override
  String toString() {
    return 'EventTicket{_id: $_id, _ticketNumber: $_ticketNumber, _eventId: $_eventId, _price: $_price, _promoCode: $_promoCode, _deletedAt: $_deletedAt, _createdAt: $_createdAt, _updatedAt: $_updatedAt}';
  }
}
