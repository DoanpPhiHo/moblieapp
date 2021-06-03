import 'package:app_asc/src/widgets/QuangCaoDetail.dart';
import 'package:flutter/material.dart';

class QuangCaoWidget extends StatelessWidget {
  const QuangCaoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      child: Card(
        elevation: 8,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: QuangCaoDetail(),
      ),
    );
  }
}
