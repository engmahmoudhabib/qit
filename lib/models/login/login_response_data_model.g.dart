// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDataModel _$$_LoginResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseDataModel(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      email: json['Email'] as String?,
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDataModelToJson(
        _$_LoginResponseDataModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Email': instance.email,
      'Token': instance.token,
    };
