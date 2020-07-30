import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:you_clock/configs/size_config.dart';
import 'package:you_clock/ui/dashboard_screen.dart';

class MyClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyClock',
      builder: (context, child) {
        SizeConfig().init(context);
        return Theme(
          data: ThemeData(
            backgroundColor: Color(0xFFF6F6F6),
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.muliTextTheme().merge(TextTheme(
              headline1: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 9,
              ),
              headline2: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 6,
              ),
              headline3: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 10,
                  color: Color(0xFFFFFFFF)),
              bodyText1: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 4,
                  color: Color(0xFFFFFFFF)),
              bodyText2: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 4,
                  color: Color(0x80FFFFFF)),
            )),
          ),
          child: child,
        );
      },
      routes: {
        '/': (BuildContext context) => DashboardScreen(),
      },
      initialRoute: '/',
    );
  }
}
