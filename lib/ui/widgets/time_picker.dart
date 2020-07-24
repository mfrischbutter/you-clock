import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';

class TimePicker extends StatefulWidget {
  TimePicker({Key key}) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TimeOfDay selectedTime;
    return GestureDetector(
      child: Text(
        TimeOfDay.now().format(context),
        style: Theme.of(context).textTheme.headline3,
      ),
      onTap: () async {
        selectedTime = await _openTimePicker(context);
      },
    );
  }

  Future<TimeOfDay> _openTimePicker(BuildContext context) =>
      showTimePicker(context: context, initialTime: TimeOfDay.now());
}
