import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';

class AlarmCard extends StatefulWidget {
  AlarmCard({Key key}) : super(key: key);

  @override
  _AlarmCardState createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF4D53E0),
          borderRadius:
              BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5)),
      child: Column(
        children: [
          Text('Arbeit'),
          Row(
            children: [Text('6:40'), Switch(value: true, onChanged: null)],
          ),
          RichText(
              text: TextSpan(
                  text: 'Mo Di Mi',
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                  children: <TextSpan>[
                TextSpan(
                    text: 'Do Fr Sa So',
                    style: TextStyle(color: Color(0x80FFFFFF)))
              ])),
        ],
      ),
    );
  }
}
