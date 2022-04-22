// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesResponseModel _$$_CategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesResponseModel(
      categoryItemModel: (json['categoryItemModel'] as List<dynamic>)
          .map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoriesResponseModelToJson(
        _$_CategoriesResponseModel instance) =>
    <String, dynamic>{
      'categoryItemModel': instance.categoryItemModel,
    };
