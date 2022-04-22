part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}
class GetCategoryResponseEvent extends CategoryEvent {
  final String category;

  const GetCategoryResponseEvent(this.category);
  @override
  List<Object> get props => [category];
}
