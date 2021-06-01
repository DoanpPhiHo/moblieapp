import 'package:rxdart/rxdart.dart';

class LoginBloc {
  int count = 0;
  int count2 = 0;
  String text = '';
  BehaviorSubject<int> subject;
  BehaviorSubject<int> subject2;
  BehaviorSubject<String> subject3;
  LoginBloc({this.count, this.count2, this.text}) {
    subject = new BehaviorSubject<int>.seeded(this.count);
    subject2 = new BehaviorSubject<int>.seeded(this.count2);
    subject3 = new BehaviorSubject<String>.seeded(this.text);
  }
  Stream<int> get countStreem => subject.stream;
  Stream<int> get countStreem2 => subject2.stream;
  Stream<String> get textStreem => subject3.stream;
  void countPlus() {
    count++;
    subject.sink.add(count);
  }

  void countMinus() {
    count--;
    subject.sink.add(count);
  }

  void countPlus2() {
    count2++;
    subject2.sink.add(count2);
  }

  void countMinus2() {
    count2--;
    subject2.sink.add(count2);
  }

  void setText(String value) {
    text = value;
    subject3.sink.add(text);
  }

  void dispose() {
    subject.close();
    subject2.close();
    subject3.close();
  }
}
