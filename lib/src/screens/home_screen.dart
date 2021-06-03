import 'package:app_asc/src/fragments/home_fragments.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          indicatorWeight: 0.1,
          indicatorColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          unselectedLabelColor: Colors.black38,
          labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
          indicatorPadding: EdgeInsets.all(0),
          tabs: [
            Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              text: 'Trang chủ',
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.accessible_outlined,
                color: Colors.black,
              ),
              text: 'Nhắc nhở',
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.access_alarm_rounded,
                color: Colors.black,
              ),
              text: 'Điểm danh',
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.access_alarm_rounded,
                color: Colors.black,
              ),
              text: 'Góp ý',
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.access_alarm_rounded,
                color: Colors.black,
              ),
              text: 'Tài khoản',
            )
          ],
          labelColor: Colors.blue,
        ),
        body: TabBarView(
          children: <Widget>[
            HomeFragment(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              ),
            ),
            Icon(Icons.youtube_searched_for_sharp),
            Icon(Icons.access_time_rounded),
            Icon(Icons.youtube_searched_for_sharp),
          ],
        ),
      ),
    );
  }
}
