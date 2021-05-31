import 'package:app_asc/src/models/school_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginDataFormLoaded extends LoginEvent {
  const LoginDataFormLoaded();
}

class LoginSchoolChanged extends LoginEvent {
  const LoginSchoolChanged({this.school});
  final SchoolModel school;
  @override
  List<Object> get props => [school];
}
