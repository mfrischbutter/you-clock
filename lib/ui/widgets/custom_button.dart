import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key, this.text, this.onPressed}) : super(key: key);

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
