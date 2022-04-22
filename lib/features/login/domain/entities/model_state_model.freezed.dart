// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelState _$ModelStateFromJson(Map<String, dynamic> json) {
  return _ModelState.fromJson(json);
}

/// @nodoc
mixin _$ModelState {
  List<String>? get logEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelStateCopyWith<ModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelStateCopyWith<$Res> {
  factory $ModelStateCopyWith(
          ModelState value, $Res Function(ModelState) then) =
      _$ModelStateCopyWithImpl<$Res>;
  $Res call({List<String>? logEmail});
}

/// @nodoc
class _$ModelStateCopyWithImpl<$Res> implements $ModelStateCopyWith<$Res> {
  _$ModelStateCopyWithImpl(this._value, this._then);

  final ModelState _value;
  // ignore: unused_field
  final $Res Function(ModelState) _then;

  @override
  $Res call({
    Object? logEmail = freezed,
  }) {
    return _then(_value.copyWith(
      logEmail: logEmail == freezed
          ? _value.logEmail
          : logEmail // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$ModelStateCopyWith<$Res> implements $ModelStateCopyWith<$Res> {
  factory _$ModelStateCopyWith(
          _ModelState value, $Res Function(_ModelState) then) =
      __$ModelStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? logEmail});
}

/// @nodoc
class __$ModelStateCopyWithImpl<$Res> extends _$ModelStateCopyWithImpl<$Res>
    implements _$ModelStateCopyWith<$Res> {
  __$ModelStateCopyWithImpl(
      _ModelState _value, $Res Function(_ModelState) _then)
      : super(_value, (v) => _then(v as _ModelState));

  @override
  _ModelState get _value => super._value as _ModelState;

  @override
  $Res call({
    Object? logEmail = freezed,
  }) {
    return _then(_ModelState(
      logEmail: logEmail == freezed
          ? _value.logEmail
          : logEmail // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelState implements _ModelState {
  const _$_ModelState({required final List<String>? logEmail})
      : _logEmail = logEmail;

  factory _$_ModelState.fromJson(Map<String, dynamic> json) =>
      _$$_ModelStateFromJson(json);

  final List<String>? _logEmail;
  @override
  List<String>? get logEmail {
    final value = _logEmail;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelState(logEmail: $logEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelState &&
            const DeepCollectionEquality().equals(other.logEmail, logEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(logEmail));

  @JsonKey(ignore: true)
  @override
  _$ModelStateCopyWith<_ModelState> get copyWith =>
      __$ModelStateCopyWithImpl<_ModelState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelStateToJson(this);
  }
}

abstract class _ModelState implements ModelState {
  const factory _ModelState({required final List<String>? logEmail}) =
      _$_ModelState;

  factory _ModelState.fromJson(Map<String, dynamic> json) =
      _$_ModelState.fromJson;

  @override
  List<String>? get logEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModelStateCopyWith<_ModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
