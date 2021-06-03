import 'package:app_asc/src/models/button_model.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key key,
    @required this.buttons,
    @required this.index,
  }) : super(key: key);

  final List<ButtonModel> buttons;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: buttons[index].color),
      padding: EdgeInsets.all(6),
      child: Icon(
        buttons[index].icon,
        color: Colors.white,
        size: MediaQuery.of(context).size.width / 12,
      ),
    );
  }
}
