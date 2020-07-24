import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/models/standard_mission.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
                width: SizeConfig.blockSizeHorizontal * 40,
                height: SizeConfig.blockSizeVertical * 10,
                child: TimePicker()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MissionCard(
                  mission: StandardMission(),
                  isSelected: true,
                )
              ],
            ),
            CustomButton(
              text: 'Save',
              onPressed: () {
                _closeCard();
              },
            ),
          ],
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

  static Color _randomBackgroundColor() {
    List<int> colorList = [0xFF4D53E0, 0xFFFF5768, 0xFF6DD3CE, 0xFFEFB1D6];
    return Color(colorList[Random().nextInt(3)]);
  }
}
