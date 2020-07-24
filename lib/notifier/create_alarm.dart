import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAlarmNotifier extends ChangeNotifier {
  final Map<String, dynamic> _settings = {};

  String get id => _settings['id'];
  TimeOfDay get time => _settings['time'] ?? TimeOfDay.now();
  DateTime get dateTime => _settings['dateTime'] ?? DateTime.now();

  void changeId(id) {
    _settings['id'] = id;
  }

  void changeTime(time) {
    _settings['time'] = time;
    notifyListeners();
  }

  void changeDateTime(dateTime) {
    _settings['dateTime'] = dateTime;
    notifyListeners();
  }

  void cancel() {
    _settings.clear();
    notifyListeners();
  }
}
