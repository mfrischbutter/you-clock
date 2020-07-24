import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';
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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 500),
      decoration: BoxDecoration(
        color: _randomBackgroundColor(),
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5),
      ),
      height: containerHeight,
      width: SizeConfig.blockSizeVertical * 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              width: SizeConfig.blockSizeHorizontal * 40,
              height: SizeConfig.blockSizeVertical * 20,
              child: TimePicker()),
        ],
      ),
    );
  }

  _openCard() async {
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      containerHeight = SizeConfig.blockSizeVertical * 84;
    });
  }

  Color _randomBackgroundColor() {
    return Color(0xFF4D53E0);
  }
}
