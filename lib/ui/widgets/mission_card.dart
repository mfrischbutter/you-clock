import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/models/mission_model.dart';

class MissionCard extends StatefulWidget {
  MissionCard({Key key, this.mission, this.isSelected = false})
      : super(key: key);

  final MissionModel mission;
  final bool isSelected;

  @override
  _MissionCardState createState() => _MissionCardState();
}

class _MissionCardState extends State<MissionCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
            border: (widget.isSelected) ? Border.all(color: Colors.red) : null,
            borderRadius:
                BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5)),
        height: SizeConfig.blockSizeVertical * 18,
        width: SizeConfig.blockSizeVertical * 18,
        child: Column(
          children: [
            Text(
              widget.mission.title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Icon(
              Icons.access_alarm,
              size: SizeConfig.blockSizeHorizontal * 18,
            )
          ],
        ));
  }
}
