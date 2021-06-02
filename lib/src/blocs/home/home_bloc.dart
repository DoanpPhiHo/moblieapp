import 'package:rxdart/rxdart.dart';

class HomeBloc {
  int index;
  BehaviorSubject<int> subject;
  HomeBloc({this.index}) {
    subject = new BehaviorSubject<int>.seeded(this.index);
  }
  Stream<int> get countStreem => subject.stream;

  void setText(int index) {
    index = index;
  }

  void dispose() {
    subject.close();
  }
}
