import 'package:app_asc/src/widgets/ThongBaoKhongCoData.dart';
import 'package:flutter/material.dart';

class AttendaceFragment extends StatelessWidget {
  const AttendaceFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Điểm danh'),
        titleTextStyle: TextStyle(),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.blue[50]),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sync),
                Text('Cập nhật danh sách lịch'),
              ],
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: ThongBaoKhongCoData(text: 'Không tìm thấy kết quả'),
          ),
        ),
      ]),
    );
  }
}
