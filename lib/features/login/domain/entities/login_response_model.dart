import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_response_data_model.dart';
part 'login_response_model.g.dart';
part 'login_response_model.freezed.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required int? code,
  required String? message,
  required LoginResponseDataModel? data,
  
  }) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String,dynamic> json) => _$LoginResponseModelFromJson(json);
}


