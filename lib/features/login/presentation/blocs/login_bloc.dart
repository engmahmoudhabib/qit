import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/domain/entities/login_response_model.dart';
import 'package:qit/features/login/domain/usecase/get_login_response.dart';


part 'login_event.dart';
part 'login_state.dart';

const String SERVER_FAILURE_MESSAGE = 'server failure';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLoginResponse getLoginResponse;
  LoginBloc({required GetLoginResponse response})
      // ignore: unnecessary_null_comparison
      : assert(response != null),
        getLoginResponse = response,
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is GetLoginResponseEvent) {
      yield Loading();
      final failureOrLogins = await getLoginResponse(request: event.request);
      yield* _eitherLoadedOrErrorState(failureOrLogins);
    }
  }
}

Stream<LoginState> _eitherLoadedOrErrorState(
  Either<Failure, LoginResponseModel> failureOrSuccess,
) async* {
  yield failureOrSuccess.fold(
    (failure) => Error(_mapFailureToMessage(failure)),
    (variant) => Loaded(response: variant),
  );
}

String _mapFailureToMessage(Failure failure) {
  return failure.toString();
}
