import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/ui/widgets/alarm_card.dart';
import 'package:you_clock/ui/widgets/custom_app_bar.dart';

class AlarmsScreen extends StatefulWidget {
  AlarmsScreen({Key key}) : super(key: key);

  @override
  _AlarmsScreenState createState() => _AlarmsScreenState();
}

class _AlarmsScreenState extends State<AlarmsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Alarms',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AlarmCard(
                  title: 'Arbeit',
                  time: '06:44',
                  backgroundColor: Color(0xFF4D53E0),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addAlarm');
        },
        elevation: 0,
        child: Icon(Icons.add_alarm),
      ),
    );
  }
}
