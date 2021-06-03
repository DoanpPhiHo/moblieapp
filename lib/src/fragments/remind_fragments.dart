import 'package:app_asc/src/widgets/ThongBaoKhongCoNhacNho.dart';
import 'package:flutter/material.dart';

class RemindFragment extends StatelessWidget {
  const RemindFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nhắc nhở'),
        titleTextStyle: TextStyle(),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: ThongBaoKhongCoNhacNho(),
    );
  }
}
