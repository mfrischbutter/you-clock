import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/models/missions.dart';

class CreateAlarmNotifier extends ChangeNotifier {
  String _title = '';
  TimeOfDay _time = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();
  MissionsModel _mission = MissionsModel().standard;
  String _ringtone = ''; //Type maybe as filepath?
  double _volume = 1.0;

  String get title => _title;
  TimeOfDay get time => _time;
  DateTime get dateTime => _dateTime;
  MissionsModel get mission => _mission;
  String get ringtone => _ringtone;
  double get volume => _volume;

  void changeTitle(value) {
    _title = value;
    notifyListeners();
  }

  void changeTime(value) {
    _time = value;
    notifyListeners();
  }

  void changeDateTime(value) {
    _dateTime = value;
    notifyListeners();
  }

  void changeMission(value) {
    _mission = value;
    notifyListeners();
  }

  void changeRingtone(value) {
    _ringtone = value;
    notifyListeners();
  }

  void changeVolume(value) {
    _volume = value;
    notifyListeners();
  }
}
