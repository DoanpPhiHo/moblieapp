import 'package:app_asc/src/blocs/home_fragment/home_fragment_bloc.dart';
import 'package:app_asc/src/models/button_model.dart';
import 'package:app_asc/src/widgets/card_stack.dart';
import 'package:app_asc/src/widgets/slide_title.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  final List<String> pages = [
    'assets/images/images.jpg',
    'assets/images/images.jpg',
    'assets/images/images.jpg',
    'assets/images/images.jpg',
    'assets/images/images.jpg'
  ];
  final List<ButtonModel> buttons = [
    new ButtonModel('Nhắc Nhở', Icons.notifications_rounded, Colors.red),
    new ButtonModel('Phiếu thu', Icons.star_outline_rounded, Colors.green),
    new ButtonModel('Công nợ', Icons.monetization_on, Colors.red[200]),
    new ButtonModel('Tin tức', Icons.fiber_new_sharp, Colors.blueAccent[700]),
    new ButtonModel(
        'Chương trình khung', Icons.calendar_today_outlined, Colors.green[300]),
    new ButtonModel('Thành tích', Icons.brightness_auto, Colors.amber),
    new ButtonModel(
        'Điểm rèn luyện', Icons.ballot_rounded, Colors.amberAccent[700]),
    new ButtonModel('Thống kê điểm danh', Icons.report, Colors.yellow[800]),
    new ButtonModel('Khảo sát', Icons.av_timer_sharp, Colors.blue[800]),
    new ButtonModel('Quảng cáo', Icons.now_widgets, Colors.red[700]),
    new ButtonModel('Mẫu đơn', Icons.receipt_rounded, Colors.blue[900]),
    new ButtonModel('Đổi mật khẩu', Icons.settings_applications_rounded,
        Colors.yellow[400]),
  ];
  final PageController pageController =
      new PageController(viewportFraction: 0.8, initialPage: 3);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              TopStack(),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .105,
                  left: 20,
                  right: 20,
                ),
                child: CardStack(),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: LayoutBuilder(
                builder: (context, view) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: view.maxHeight),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.only(
                              top: 0,
                              bottom: 0,
                              left: 15,
                              right: 15,
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: buttons.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      MediaQuery.of(context).size.height /
                                      .55,
                              crossAxisCount: 4,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 2,
                            ),
                            itemBuilder: (context, index) => InkWell(
                              splashColor: Colors.amber,
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                child: Center(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: buttons[index].color),
                                          padding: EdgeInsets.all(6),
                                          child: Icon(
                                            buttons[index].icon,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                12,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            buttons[index].name,
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .22,
                          child: PageView.builder(
                            controller: pageController,
                            itemBuilder: (context, index) {
                              print('index:$index');
                              if (index <= 2) {
                                pageController
                                    .jumpToPage(index + pages.length - 1);
                              }
                              return SlideTitle(
                                imagePath: pages[index % pages.length],
                              );
                            },
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
            height: MediaQuery.of(context).size.height * .07,
            child: Card(
              elevation: 8,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * .90,
                padding: EdgeInsets.all(5),
                height: 60,
                child: Text(
                  'Quảng cáo nè',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
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
