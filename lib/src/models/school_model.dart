import 'package:equatable/equatable.dart';

class SchoolModel extends Equatable {
  final String name;
  final int id;

  SchoolModel(this.name, this.id);

  @override
  List<Object> get props => [this.id, this.name];
  @override
  String toString() => 'SchoolModel { id: $id, name: $name }';
}
