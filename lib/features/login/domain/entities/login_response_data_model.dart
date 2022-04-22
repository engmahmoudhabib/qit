import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_data_model.g.dart';
part 'login_response_data_model.freezed.dart';

@freezed
class LoginResponseDataModel with _$LoginResponseDataModel {
  const factory LoginResponseDataModel({
   required int? id,
  required String? name,
  required String? email,
  required String? token,
  
  }) = _LoginResponseDataModel;
  factory LoginResponseDataModel.fromJson(Map<String,dynamic> json) => _$LoginResponseDataModelFromJson(json);
}
