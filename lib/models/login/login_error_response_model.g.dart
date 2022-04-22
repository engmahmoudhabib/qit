// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginErrorResponse _$$_LoginErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LoginErrorResponse(
      message: json['message'] as String?,
      modelState: json['modelState'] == null
          ? null
          : ModelState.fromJson(json['modelState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginErrorResponseToJson(
        _$_LoginErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'modelState': instance.modelState,
    };
