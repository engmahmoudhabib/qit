part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class GetCategoriesResponseEvent extends CategoriesEvent {
  const GetCategoriesResponseEvent();
  @override
  List<Object> get props => [];
}
