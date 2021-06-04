import 'package:flutter/material.dart';

class ButtonCus extends StatelessWidget {
  const ButtonCus({
    Key key,
    this.text,
    this.autofocus,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  final String text;
  final bool autofocus;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: TextButton(
        onPressed: () {},
        child: Text(text),
        clipBehavior: Clip.antiAlias,
        autofocus: autofocus,
        style: TextButton.styleFrom(
            primary: textColor,
            onSurface: Colors.red,
            backgroundColor: backgroundColor),
      ),
    );
  }
}
