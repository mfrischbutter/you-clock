import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';

class AlarmCard extends StatefulWidget {
  AlarmCard({Key key, this.time, this.title, this.backgroundColor}) : super(key: key);

  @required
  final String title;
  final String time;
  final Color backgroundColor;

  @override
  _AlarmCardState createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius:
              BorderRadius.circular(SizeConfig.blockSizeHorizontal * 5)),
      height: SizeConfig.blockSizeVertical * 14,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 1,
          ),
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.time,
                style: Theme.of(context).textTheme.headline3,
              ),
              Switch(value: true, onChanged: null)
            ],
          ),
          Spacer(
            flex: 1,
          ),
          RichText(
              text: TextSpan(
                  text: 'Mo Di Mi ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                TextSpan(
                    text: 'Do Fr Sa So',
                    style: Theme.of(context).textTheme.bodyText2)
              ])),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
