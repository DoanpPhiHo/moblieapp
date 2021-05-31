import 'package:equatable/equatable.dart';

abstract class AuthenticatisionState extends Equatable {
  const AuthenticatisionState();
  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticatisionState {}

class Authenticated extends AuthenticatisionState {
  final String userId;

  Authenticated(this.userId);

  @override
  List<Object> get props => [userId];

  @override
  String toString() {
    return 'authenticated {userId : $userId}';
  }
}

class UnAuthenticated extends AuthenticatisionState {}
