import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit/features/home/domain/entities/rating_response_model.dart';

import 'category_item_model.dart';
import 'rating_response_model.dart';


part 'categories_response_model.g.dart';
part 'categories_response_model.freezed.dart';

@freezed
class CategoriesResponseModel with _$CategoriesResponseModel {
  const factory CategoriesResponseModel({
   required List<CategoryItemModel> categoryItemModel,
  
  
  }) = _CategoriesResponseModel;
  factory CategoriesResponseModel.fromJson(Map<String,dynamic> json) => _$CategoriesResponseModelFromJson(json);
}


