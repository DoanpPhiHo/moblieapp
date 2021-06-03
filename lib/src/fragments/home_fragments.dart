import 'package:app_asc/src/models/button_model.dart';
import 'package:app_asc/src/widgets/GridButton.dart';
import 'package:app_asc/src/widgets/QuangCaoWidget.dart';
import 'package:app_asc/src/widgets/SlideImageThongBao.dart';
import 'package:app_asc/src/widgets/TopStack.dart';
import 'package:app_asc/src/widgets/card_stack.dart';
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
                        GridButton(buttons: buttons),
                        SlideImageThongBao(
                            pageController: pageController, pages: pages),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          QuangCaoWidget()
        ],
      ),
    );
  }
}
