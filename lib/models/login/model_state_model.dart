import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_state_model.g.dart';
part 'model_state_model.freezed.dart';

@freezed
class ModelState with _$ModelState {
  const factory ModelState({
    required  List<String>? logEmail,
  
  }) = _ModelState;
  factory ModelState.fromJson(Map<String,dynamic> json) => _$ModelStateFromJson(json);
}
