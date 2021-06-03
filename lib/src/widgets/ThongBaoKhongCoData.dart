import 'package:flutter/material.dart';

class ThongBaoKhongCoData extends StatelessWidget {
  const ThongBaoKhongCoData({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.blue,
                size: 80,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
