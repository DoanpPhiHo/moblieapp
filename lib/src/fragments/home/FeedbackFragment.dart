import 'package:app_asc/src/widgets/ButtonCus.dart';
import 'package:app_asc/src/widgets/TextFiledCus.dart';
import 'package:flutter/material.dart';

class FeedbackFragment extends StatelessWidget {
  const FeedbackFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Góp ý phản hồi'),
        titleTextStyle: TextStyle(),
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    'Mọi thông tin đóng góp ý kiến phản hồi vui lòng nhập vào các thông tin bên dưới Tìm hiểu thêm'),
              ),
              TextFiledCus(
                hintText: 'Hệ thống ASC Training',
                required: true,
                title: 'Tên trường',
                enable: false,
              ),
              TextFiledCus(
                hintText: 'Đoàn Phi Hổ',
                required: true,
                title: 'Họ tên',
                enable: false,
              ),
              TextFiledCus(
                hintText: 'Nhập số điện thoại',
                required: false,
                title: 'Số điện thoại',
                textInputAction: TextInputAction.next,
              ),
              TextFiledCus(
                hintText: 'Nhập email',
                required: true,
                title: 'Email',
                textInputAction: TextInputAction.next,
              ),
              TextFiledCus(
                hintText: 'Nhập nội dung',
                required: true,
                title: 'Nội dung',
                textInputAction: TextInputAction.done,
                maxLine: 10,
                minLine: 3,
              ),
              ButtonCus(
                text: 'Gửi',
                autofocus: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
