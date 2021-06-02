import 'package:app_asc/src/widgets/button_stack.dart';
import 'package:flutter/material.dart';

class CardStack extends StatelessWidget {
  const CardStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.height * .90,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonStack(
              title: 'Xem lịch',
              icon: Icons.calendar_today,
            ),
            Container(
              height: 100,
              width: 1,
              color: Colors.black26,
            ),
            ButtonStack(
              title: 'Xem điểm',
              icon: Icons.portrait_outlined,
            )
          ],
        ),
      ),
    );
  }
}
