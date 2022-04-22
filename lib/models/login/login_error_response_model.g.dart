// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginErrorResponse _$$_LoginErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LoginErrorResponse(
      message: json['Message'] as String?,
      modelState: json['ModelState'] == null
          ? null
          : ModelState.fromJson(json['ModelState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginErrorResponseToJson(
        _$_LoginErrorResponse instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'ModelState': instance.modelState,
    };
