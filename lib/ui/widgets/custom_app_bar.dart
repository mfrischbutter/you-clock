import 'package:flutter/material.dart';
import 'package:you_clock/configs/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      title: Text(title ?? '', style: Theme.of(context).textTheme.headline1,),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.blockSizeVertical * 7);
}
