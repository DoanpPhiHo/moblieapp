import 'package:app_asc/src/models/school_model.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final List<SchoolModel> schools;
  final SchoolModel school;
  const LoginState._({this.schools = const <SchoolModel>[], this.school});
  const LoginState.initial() : this._();
  const LoginState.schoolsLoadInProcess() : this._();
  const LoginState.schoolsLoadSuccess({List<SchoolModel> schools})
      : this._(schools: schools);
  LoginState copyWith({List<SchoolModel> schools, SchoolModel school}) =>
      LoginState._(schools: schools ?? schools, school: school ?? school);
  bool get isComplete => school != null;
  @override
  List<Object> get props => [schools, school];
}
