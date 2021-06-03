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
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Tên trường(*)',
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Tên trường(*)',
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Tên trường(*)',
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Tên trường(*)',
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Tên trường(*)',
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                    TextField()
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Gửi'),
                  clipBehavior: Clip.antiAlias,
                  autofocus: true,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
