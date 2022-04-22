part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class GetLoginResponseEvent extends LoginEvent {
  final LoginRequest request;

  const GetLoginResponseEvent(this.request);
  @override
  List<Object> get props => [request];
}
