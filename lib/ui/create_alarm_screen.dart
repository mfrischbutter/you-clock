import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/models/alarm_model.dart';
import 'package:you_clock/notifier/create_alarm.dart';
import 'package:you_clock/ui/widgets/create_alarm_card.dart';
import 'package:you_clock/ui/widgets/custom_app_bar.dart';

class CreateAlarmScreen extends StatelessWidget {
  const CreateAlarmScreen({Key key}) : super(key: key);

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
          child: ChangeNotifierProvider(
              create: (context) => CreateAlarmNotifier(),
              child: CreateAlarmCard()),
        ),
      )),
    );
  }
}
