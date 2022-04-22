// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_error_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginErrorResponse _$LoginErrorResponseFromJson(Map<String, dynamic> json) {
  return _LoginErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginErrorResponse {
  String? get message => throw _privateConstructorUsedError;
  ModelState? get modelState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginErrorResponseCopyWith<LoginErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorResponseCopyWith<$Res> {
  factory $LoginErrorResponseCopyWith(
          LoginErrorResponse value, $Res Function(LoginErrorResponse) then) =
      _$LoginErrorResponseCopyWithImpl<$Res>;
  $Res call({String? message, ModelState? modelState});

  $ModelStateCopyWith<$Res>? get modelState;
}

/// @nodoc
class _$LoginErrorResponseCopyWithImpl<$Res>
    implements $LoginErrorResponseCopyWith<$Res> {
  _$LoginErrorResponseCopyWithImpl(this._value, this._then);

  final LoginErrorResponse _value;
  // ignore: unused_field
  final $Res Function(LoginErrorResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? modelState = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      modelState: modelState == freezed
          ? _value.modelState
          : modelState // ignore: cast_nullable_to_non_nullable
              as ModelState?,
    ));
  }

  @override
  $ModelStateCopyWith<$Res>? get modelState {
    if (_value.modelState == null) {
      return null;
    }

    return $ModelStateCopyWith<$Res>(_value.modelState!, (value) {
      return _then(_value.copyWith(modelState: value));
    });
  }
}

/// @nodoc
abstract class _$LoginErrorResponseCopyWith<$Res>
    implements $LoginErrorResponseCopyWith<$Res> {
  factory _$LoginErrorResponseCopyWith(
          _LoginErrorResponse value, $Res Function(_LoginErrorResponse) then) =
      __$LoginErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, ModelState? modelState});

  @override
  $ModelStateCopyWith<$Res>? get modelState;
}

/// @nodoc
class __$LoginErrorResponseCopyWithImpl<$Res>
    extends _$LoginErrorResponseCopyWithImpl<$Res>
    implements _$LoginErrorResponseCopyWith<$Res> {
  __$LoginErrorResponseCopyWithImpl(
      _LoginErrorResponse _value, $Res Function(_LoginErrorResponse) _then)
      : super(_value, (v) => _then(v as _LoginErrorResponse));

  @override
  _LoginErrorResponse get _value => super._value as _LoginErrorResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? modelState = freezed,
  }) {
    return _then(_LoginErrorResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      modelState: modelState == freezed
          ? _value.modelState
          : modelState // ignore: cast_nullable_to_non_nullable
              as ModelState?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginErrorResponse implements _LoginErrorResponse {
  const _$_LoginErrorResponse(
      {required this.message, required this.modelState});

  factory _$_LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginErrorResponseFromJson(json);

  @override
  final String? message;
  @override
  final ModelState? modelState;

  @override
  String toString() {
    return 'LoginErrorResponse(message: $message, modelState: $modelState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginErrorResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.modelState, modelState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(modelState));

  @JsonKey(ignore: true)
  @override
  _$LoginErrorResponseCopyWith<_LoginErrorResponse> get copyWith =>
      __$LoginErrorResponseCopyWithImpl<_LoginErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginErrorResponseToJson(this);
  }
}

abstract class _LoginErrorResponse implements LoginErrorResponse {
  const factory _LoginErrorResponse(
      {required final String? message,
      required final ModelState? modelState}) = _$_LoginErrorResponse;

  factory _LoginErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginErrorResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  ModelState? get modelState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginErrorResponseCopyWith<_LoginErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
