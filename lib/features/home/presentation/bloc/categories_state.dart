part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();
  
  @override
  List<Object> get props => [];
}


class LoginInitial extends CategoriesState {}

class Loading extends CategoriesState {}

class Loaded extends CategoriesState {
  final List<String> response;
  const Loaded({
    required this.response,
  });
}

class Error extends CategoriesState {
  final String errorMessage;
  const Error(this.errorMessage);
}
