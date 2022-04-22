// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingResponseModel _$$_RatingResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_RatingResponseModel(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_RatingResponseModelToJson(
        _$_RatingResponseModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
