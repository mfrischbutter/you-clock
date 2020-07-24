import 'package:flutter/cupertino.dart';

class CreateAlarm extends ChangeNotifier {
  final Map<String, String> _settings = {};

  String get id => _settings['id'];
  String get time => _settings['time'];

  void declareId(id) {
    _settings['id'] = id;
    notifyListeners();
  }

  void cancel() {
    _settings.clear();
    notifyListeners();
  }
}
