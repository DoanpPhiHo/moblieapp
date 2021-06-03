import 'package:app_asc/src/models/button_model.dart';
import 'package:app_asc/src/widgets/ButtonIcon.dart';
import 'package:app_asc/src/widgets/ButtonTitile.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({
    Key key,
    @required this.buttons,
    @required this.index,
  }) : super(key: key);

  final List<ButtonModel> buttons;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      onTap: () {},
      child: Container(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ButtonIcon(
                  buttons: buttons,
                  index: index,
                ),
                ButtonTitile(
                  buttons: buttons,
                  index: index,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
