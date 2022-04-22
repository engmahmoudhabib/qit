// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesResponseModel _$$_CategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesResponseModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] == null
          ? null
          : RatingResponseModel.fromJson(
              json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoriesResponseModelToJson(
        _$_CategoriesResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };
