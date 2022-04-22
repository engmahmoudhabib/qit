import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qit/core/faileurs.dart';

import '../../domain/entities/categories_response_model.dart';
import '../../domain/usecase/get_category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
   final GetCategoryResponse getCategoryResponse;
  CategoryBloc({required GetCategoryResponse response})
      // ignore: unnecessary_null_comparison
      : assert(response != null),
        getCategoryResponse = response,
        super(CategoryInitial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is GetCategoryResponseEvent) {
      yield Loadingg();
      final failureOrCategorys = await getCategoryResponse(category: event.category);
      yield* _eitherLoadedOrErrorState(failureOrCategorys);
    }
  }
}

Stream<CategoryState> _eitherLoadedOrErrorState(
  Either<Failure, CategoriesResponseModel> failureOrSuccess,
) async* {
  yield failureOrSuccess.fold(
    (failure) => Errorr(_mapFailureToMessage(failure)),
    (loaded) => Loadedd(response: loaded),
  );
}

String _mapFailureToMessage(Failure failure) {
  return failure.toString();
}
