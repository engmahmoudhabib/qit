// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingResponseModel _$RatingResponseModelFromJson(Map<String, dynamic> json) {
  return _RatingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RatingResponseModel {
  double? get rate => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingResponseModelCopyWith<RatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingResponseModelCopyWith<$Res> {
  factory $RatingResponseModelCopyWith(
          RatingResponseModel value, $Res Function(RatingResponseModel) then) =
      _$RatingResponseModelCopyWithImpl<$Res>;
  $Res call({double? rate, int? count});
}

/// @nodoc
class _$RatingResponseModelCopyWithImpl<$Res>
    implements $RatingResponseModelCopyWith<$Res> {
  _$RatingResponseModelCopyWithImpl(this._value, this._then);

  final RatingResponseModel _value;
  // ignore: unused_field
  final $Res Function(RatingResponseModel) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RatingResponseModelCopyWith<$Res>
    implements $RatingResponseModelCopyWith<$Res> {
  factory _$RatingResponseModelCopyWith(_RatingResponseModel value,
          $Res Function(_RatingResponseModel) then) =
      __$RatingResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({double? rate, int? count});
}

/// @nodoc
class __$RatingResponseModelCopyWithImpl<$Res>
    extends _$RatingResponseModelCopyWithImpl<$Res>
    implements _$RatingResponseModelCopyWith<$Res> {
  __$RatingResponseModelCopyWithImpl(
      _RatingResponseModel _value, $Res Function(_RatingResponseModel) _then)
      : super(_value, (v) => _then(v as _RatingResponseModel));

  @override
  _RatingResponseModel get _value => super._value as _RatingResponseModel;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_RatingResponseModel(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingResponseModel implements _RatingResponseModel {
  const _$_RatingResponseModel({required this.rate, required this.count});

  factory _$_RatingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_RatingResponseModelFromJson(json);

  @override
  final double? rate;
  @override
  final int? count;

  @override
  String toString() {
    return 'RatingResponseModel(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RatingResponseModel &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$RatingResponseModelCopyWith<_RatingResponseModel> get copyWith =>
      __$RatingResponseModelCopyWithImpl<_RatingResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingResponseModelToJson(this);
  }
}

abstract class _RatingResponseModel implements RatingResponseModel {
  const factory _RatingResponseModel(
      {required final double? rate,
      required final int? count}) = _$_RatingResponseModel;

  factory _RatingResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RatingResponseModel.fromJson;

  @override
  double? get rate => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RatingResponseModelCopyWith<_RatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
