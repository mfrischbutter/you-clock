import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/models/standard_mission.dart';

/// This Notifier needs maybe another solution - too many values that dont need to be notified
class CreateAlarmNotifier extends ChangeNotifier {
  final Map<String, dynamic> _settings = {};

  int get id => 0;
  String get title => _settings['title'] ?? '';
  TimeOfDay get time => _settings['time'] ?? TimeOfDay.now();
  DateTime get dateTime => _settings['dateTime'] ?? DateTime.now();
  get mission => _settings['mission'] ?? StandardMission;
  String get ringtone => _settings['ringtone'] ?? ''; //Type maybe as filepath?
  double get volume => _settings['volume'] ?? '';

  void changeTitle(value) {
    _settings['time'] = value;
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
  }

  void changeRingtone(value) {
    _settings['ringtone'] = value;
  }

  void changeVolume(value) {
    _settings['volume'] = value;
  }

  void save() {}

  void cancel() {
    _settings.clear();
    notifyListeners();
  }
}
