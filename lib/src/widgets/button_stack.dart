import 'package:flutter/material.dart';

class ButtonStack extends StatelessWidget {
  const ButtonStack({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue[200],
          size: 40,
        ),
        Text(title)
      ],
    );
  }
}
