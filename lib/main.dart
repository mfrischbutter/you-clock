import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/my_clock.dart';

void main() {
  runApp(MyClock());
  AndroidAlarmManager.initialize();
}
