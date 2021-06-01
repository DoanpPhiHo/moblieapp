import 'package:app_asc/src/models/models.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  SchoolModel schoolModel = new SchoolModel();
  String text = '';
  BehaviorSubject<SchoolModel> subject2;
  BehaviorSubject<String> subject3;
  LoginBloc({this.text, this.schoolModel}) {
    subject2 = new BehaviorSubject<SchoolModel>.seeded(this.schoolModel);
    subject3 = new BehaviorSubject<String>.seeded(this.text);
  }
  Stream<SchoolModel> get countStreem2 => subject2.stream;
  Stream<String> get textStreem => subject3.stream;

  void setText(String value) {
    text = value;
    subject3.sink.add(text);
  }

  void setModel(SchoolModel schoolModel) {
    subject2.sink.add(schoolModel);
  }

  void dispose() {
    subject2.close();
    subject3.close();
  }
}
