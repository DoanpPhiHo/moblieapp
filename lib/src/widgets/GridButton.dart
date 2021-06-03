import 'package:app_asc/src/models/button_model.dart';
import 'package:app_asc/src/widgets/ButtonGrid.dart';
import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  const GridButton({
    Key key,
    @required this.buttons,
  }) : super(key: key);

  final List<ButtonModel> buttons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(
          top: 0,
          bottom: 0,
          left: 15,
          right: 15,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: buttons.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.width /
              MediaQuery.of(context).size.height /
              .55,
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) => ButtonGrid(
          buttons: buttons,
          index: index,
        ),
      ),
    );
  }
}
