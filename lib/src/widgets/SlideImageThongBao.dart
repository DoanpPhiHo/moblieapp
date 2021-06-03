import 'package:app_asc/src/widgets/slide_title.dart';
import 'package:flutter/material.dart';

class SlideImageThongBao extends StatelessWidget {
  const SlideImageThongBao({
    Key key,
    @required this.pageController,
    @required this.pages,
  }) : super(key: key);

  final PageController pageController;
  final List<String> pages;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .22,
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) {
          if (index < 2) {
            pageController.jumpToPage(index + pages.length - 1);
          }
          return SlideTitle(
            imagePath: pages[index % pages.length],
          );
        },
      ),
    );
  }
}
