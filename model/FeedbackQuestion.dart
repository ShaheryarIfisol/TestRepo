

import 'package:attendo/model/EventModel.dart';

class FeedbackQuestion{
  Logbook? title;
  double? value = 0.0;

  FeedbackQuestion(this.title);
  FeedbackQuestion.all({this.title, this.value});


  @override
  String toString() {
    return 'feedbackQuestion{_title: $title, _value: $value}';
  }




}