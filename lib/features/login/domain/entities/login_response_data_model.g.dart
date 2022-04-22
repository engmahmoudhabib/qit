// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDataModel _$$_LoginResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseDataModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDataModelToJson(
        _$_LoginResponseDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
    };
