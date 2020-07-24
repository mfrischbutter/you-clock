import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_clock/notifier/create_alarm.dart';

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
    return Consumer<CreateAlarmNotifier>(
      builder: (context, model, child) {
        return GestureDetector(
          child: Text(
            model.time.format(context),
            style: Theme.of(context).textTheme.headline3,
          ),
          onTap: () async {
            selectedTime = await _openTimePicker(context);
            model.changeTime(selectedTime);
          },
        );
      },
    );
  }

  Future<TimeOfDay> _openTimePicker(BuildContext context) =>
      showTimePicker(context: context, initialTime: TimeOfDay.now());
}
