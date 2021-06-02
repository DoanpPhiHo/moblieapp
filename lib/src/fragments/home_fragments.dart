import 'package:app_asc/src/models/button_model.dart';
import 'package:app_asc/src/widgets/card_stack.dart';
import 'package:app_asc/src/widgets/slide_title.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  final List<ButtonModel> buttons = [
    new ButtonModel('Nhắc Nhở', Icons.notifications_rounded, Colors.red),
    new ButtonModel('Phiếu thu', Icons.star_outline_rounded, Colors.green),
    new ButtonModel('Công nợ', Icons.monetization_on, Colors.red[200]),
    new ButtonModel('Tin tức', Icons.fiber_new_sharp, Colors.blueAccent[700]),
    new ButtonModel(
        'Chương trình khung', Icons.calendar_today_outlined, Colors.green[300]),
    new ButtonModel('Thành tích', Icons.brightness_auto, Colors.amber),
    new ButtonModel(
        'Điểm rèn luyện', Icons.ballot_rounded, Colors.deepPurpleAccent[600]),
    new ButtonModel('Thống kê điểm danh', Icons.report, Colors.yellow[800]),
    new ButtonModel(
        'Khảo sát', Icons.av_timer_sharp, Colors.lightBlueAccent[800]),
    new ButtonModel('Quảng cáo', Icons.now_widgets, Colors.red[700]),
    new ButtonModel('Mẫu đơn', Icons.receipt_rounded, Colors.blue[900]),
    new ButtonModel('Đổi mật khẩu', Icons.settings_applications_rounded,
        Colors.yellow[400]),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            TopStack(),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .11,
                left: 40,
                right: 40,
              ),
              child: CardStack(),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * .80,
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.1,
                        crossAxisCount: 4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: SizedBox(
                          height: 10,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  buttons[index].icon,
                                  color: buttons[index].color,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    buttons[index].name,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.7),
                      children: <Widget>[
                        SlideTitle(
                          imagePath: 'assets/images/images.jpg',
                        ),
                        SlideTitle(
                          imagePath: 'assets/images/images.jpg',
                        ),
                        SlideTitle(
                          imagePath: 'assets/images/images.jpg',
                        ),
                        SlideTitle(
                          imagePath: 'assets/images/images.jpg',
                        ),
                        SlideTitle(
                          imagePath: 'assets/images/images.jpg',
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .07,
          child: Card(
            elevation: 8,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: MediaQuery.of(context).size.height * .90,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Text(
                'Quảng cáo nè',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class TopStack extends StatelessWidget {
  const TopStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .06),
      alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.height * .15,
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
            )),
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