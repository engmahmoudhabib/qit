part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class Loading extends LoginState {}

class Loaded extends LoginState {
  final LoginResponseModel response;
  const Loaded({
    required this.response,
  });
}

class Error extends LoginState {
  final String errorMessage;
  const Error(this.errorMessage);
}
