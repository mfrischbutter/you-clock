import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/models/missions.dart';

class CreateAlarmNotifier extends ChangeNotifier {
  final Map<String, dynamic> _settings = {};

  String get title => _settings['title'] ?? '';
  TimeOfDay get time => _settings['time'] ?? TimeOfDay.now();
  DateTime get dateTime => _settings['dateTime'] ?? DateTime.now();
  MissionsModel get mission => _settings['mission'] ?? MissionsModel().standard;
  String get ringtone => _settings['ringtone'] ?? ''; //Type maybe as filepath?
  double get volume => _settings['volume'] ?? '';

  void changeTitle(value) {
    _settings['time'] = value;
    notifyListeners();
  }

  void changeTime(value) {
    _settings['time'] = value;
    notifyListeners();
  }

  void changeDateTime(value) {
    _settings['dateTime'] = value;
    notifyListeners();
  }

  void changeMission(value) {
    _settings['mission'] = value;
    notifyListeners();
  }

  void changeRingtone(value) {
    _settings['ringtone'] = value;
    notifyListeners();
  }

  void changeVolume(value) {
    _settings['volume'] = value;
    notifyListeners();
  }

  void cancel() {
    _settings.clear();
    notifyListeners();
  }
}
