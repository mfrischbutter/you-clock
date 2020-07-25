import 'dart:math';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/models/barcode_mission.dart';
import 'package:you_clock/models/standard_mission.dart';
import 'package:you_clock/notifier/create_alarm.dart';
import 'package:you_clock/ui/widgets/custom_button.dart';
import 'package:you_clock/ui/widgets/mission_card.dart';
import 'package:you_clock/ui/widgets/time_picker.dart';

class CreateAlarmCard extends StatefulWidget {
  CreateAlarmCard({Key key}) : super(key: key);

  @override
  _CreateAlarmCardState createState() => _CreateAlarmCardState();
}

class _CreateAlarmCardState extends State<CreateAlarmCard> {
  double containerHeight =
      SizeConfig.blockSizeVertical * 14; //will be changed in initState()

  @override
  void initState() {
    _openCard();
    super.initState();
  }

  final Color backgroundColor = _randomBackgroundColor();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 500),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5),
      ),
      height: containerHeight,
      width: SizeConfig.blockSizeVertical * 100,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.blockSizeVertical,
              ),
              Text(
                'Uhrzeit einstellen:',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical / 2,
              ),
              Container(
                  padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(
                          SizeConfig.blockSizeHorizontal * 5)),
                  width: SizeConfig.blockSizeHorizontal * 100,
                  height: SizeConfig.blockSizeVertical * 7,
                  child: TimePicker()),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 4,
              ),
              Text(
                'Mission auswählen:',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MissionCard(
                    mission: StandardMission(),
                    isSelected: true,
                  ),
                  MissionCard(
                    mission: BarcodeMission(),
                    isSelected: false,
                  )
                ],
              ),
              Consumer<CreateAlarmNotifier>(
                builder: (context, model, child) {
                  return CustomButton(
                    text: 'Save',
                    onPressed: () async {
                      await _saveALarm(model);
                      _closeCard();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _openCard() async {
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      containerHeight = SizeConfig.blockSizeVertical * 84;
    });
  }

  _closeCard() async {
    setState(() {
      containerHeight = SizeConfig.blockSizeVertical * 14;
    });
    await Future.delayed(Duration(milliseconds: 500));
    Navigator.pop(context);
  }

  _saveALarm(model) async {
    await AndroidAlarmManager.periodic(
        const Duration(seconds: 1), model.id, fireAlarm);

    model.save();
  }

  static Future<void> fireAlarm() async {
    print('Alarm fired!');
  }

  static Color _randomBackgroundColor() {
    List<int> colorList = [0xFF4D53E0, 0xFFFF5768, 0xFF6DD3CE, 0xFFEFB1D6];
    return Color(colorList[Random().nextInt(3)]);
  }
}
