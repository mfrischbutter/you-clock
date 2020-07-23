import 'package:flutter/material.dart';
import 'ui/alarms_screen.dart';

class MyClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyClock',
      theme: ThemeData(
        backgroundColor: Color(0xF6F6F6),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AlarmsScreen(),
    );
  }
}
