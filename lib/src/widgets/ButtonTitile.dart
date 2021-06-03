import 'package:app_asc/src/models/button_model.dart';
import 'package:flutter/material.dart';

class ButtonTitile extends StatelessWidget {
  const ButtonTitile({Key key, @required this.buttons, @required this.index})
      : super(key: key);

  final List<ButtonModel> buttons;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        buttons[index].name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
