
import 'package:qit/features/home/domain/entities/rating_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_item_model.g.dart';
part 'category_item_model.freezed.dart';

@freezed
class CategoryItemModel with _$CategoryItemModel {
  const factory CategoryItemModel({
   required int? id,
  required String? title,
  required double price,
  required String? description,
  required String? category,
  required String? image,
  required RatingResponseModel? rating,
  
  }) = _CategoryItemModel;
  factory CategoryItemModel.fromJson(Map<String,dynamic> json) => _$CategoryItemModelFromJson(json);
}

