import 'package:flutter/material.dart';
import 'package:you_clock/ui/widgets/alarm_card.dart';

class AlarmsScreen extends StatefulWidget {
  AlarmsScreen({Key key}) : super(key: key);

  @override
  _AlarmsScreenState createState() => _AlarmsScreenState();
}

class _AlarmsScreenState extends State<AlarmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[AlarmCard()],
        ),
      ),
    );
  }
}
