import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qit/core/faileurs.dart';

import '../../domain/usecase/get_categories.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesResponse getCategoriesResponse;
  CategoriesBloc({required GetCategoriesResponse response})
      // ignore: unnecessary_null_comparison
      : assert(response != null),
        getCategoriesResponse = response,
        super(LoginInitial());

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is GetCategoriesResponseEvent) {
      yield Loading();
      final failureOrLogins = await getCategoriesResponse();
      yield* _eitherLoadedOrErrorState(failureOrLogins);
    }
  }
}

Stream<CategoriesState> _eitherLoadedOrErrorState(
  Either<Failure, List<dynamic>> failureOrSuccess,
) async* {
  yield failureOrSuccess.fold(
    (failure) => Error(_mapFailureToMessage(failure)),
    (loaded) => Loaded(response: loaded),
  );
}

String _mapFailureToMessage(Failure failure) {
  return failure.toString();
}
