import 'package:flutter/material.dart';

class QuangCaoDetail extends StatelessWidget {
  const QuangCaoDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .90,
      padding: EdgeInsets.all(5),
      height: 60,
      child: Text(
        'Quảng cáo nè',
        textAlign: TextAlign.center,
      ),
    );
  }
}
