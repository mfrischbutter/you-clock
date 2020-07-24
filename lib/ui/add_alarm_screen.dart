import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/ui/widgets/add_alarm_card.dart';
import 'package:you_clock/ui/widgets/custom_app_bar.dart';

class AddAlarmScreen extends StatelessWidget {
  const AddAlarmScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Add Alarm',
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 4),
        child: SingleChildScrollView(
          child: AddAlarmCard(),
        ),
      )),
    );
  }


}
