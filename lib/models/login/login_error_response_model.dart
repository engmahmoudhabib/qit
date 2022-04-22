

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_state_model.dart';
part 'login_error_response_model.g.dart';
part 'login_error_response_model.freezed.dart';

@freezed
class LoginErrorResponse with _$LoginErrorResponse {
  const factory LoginErrorResponse({
    required String? message,
 required ModelState? modelState,
  }) = _LoginErrorResponse;
  factory LoginErrorResponse.fromJson(Map<String,dynamic> json) => _$LoginErrorResponseFromJson(json);
}









