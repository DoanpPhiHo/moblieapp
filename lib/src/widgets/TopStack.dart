import 'package:flutter/material.dart';

class TopStack extends StatelessWidget {
  const TopStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.height * .16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(30, 8),
          bottomRight: Radius.elliptical(30, 8),
        ),
        color: Colors.blueAccent,
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Xin chào, Đoàn Phi Hổ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Icon(
              Icons.notifications_none,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
