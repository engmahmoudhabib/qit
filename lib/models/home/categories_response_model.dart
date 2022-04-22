import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_response_model.dart';


part 'categories_response_model.g.dart';
part 'categories_response_model.freezed.dart';

@freezed
class CategoriesResponseModel with _$CategoriesResponseModel {
  const factory CategoriesResponseModel({
   required int? id,
  required String? title,
  required int? price,
  required String? description,
  required String? category,
  required String? image,
  required RatingResponseModel? rating,
  
  }) = _CategoriesResponseModel;
  factory CategoriesResponseModel.fromJson(Map<String,dynamic> json) => _$CategoriesResponseModelFromJson(json);
}