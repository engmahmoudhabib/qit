part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
  
  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}
class Loadingg extends CategoryState {}

class Loadedd extends CategoryState {
  final CategoriesResponseModel response;
  const Loadedd({
    required this.response,
  });
}

class Errorr extends CategoryState {
  final String errorMessage;
  const Errorr(this.errorMessage);
}
