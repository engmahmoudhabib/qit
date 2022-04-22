



import 'package:freezed_annotation/freezed_annotation.dart';


part 'rating_response_model.g.dart';
part 'rating_response_model.freezed.dart';

@freezed
class RatingResponseModel with _$RatingResponseModel {
  const factory RatingResponseModel({
  required double? rate,
  required int? count,
  
  }) = _RatingResponseModel;
  factory RatingResponseModel.fromJson(Map<String,dynamic> json) => _$RatingResponseModelFromJson(json);
}

