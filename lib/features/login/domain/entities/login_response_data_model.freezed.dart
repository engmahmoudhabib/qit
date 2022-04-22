// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDataModel _$LoginResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _LoginResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataModelCopyWith<LoginResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataModelCopyWith<$Res> {
  factory $LoginResponseDataModelCopyWith(LoginResponseDataModel value,
          $Res Function(LoginResponseDataModel) then) =
      _$LoginResponseDataModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? email, String? token});
}

/// @nodoc
class _$LoginResponseDataModelCopyWithImpl<$Res>
    implements $LoginResponseDataModelCopyWith<$Res> {
  _$LoginResponseDataModelCopyWithImpl(this._value, this._then);

  final LoginResponseDataModel _value;
  // ignore: unused_field
  final $Res Function(LoginResponseDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseDataModelCopyWith<$Res>
    implements $LoginResponseDataModelCopyWith<$Res> {
  factory _$LoginResponseDataModelCopyWith(_LoginResponseDataModel value,
          $Res Function(_LoginResponseDataModel) then) =
      __$LoginResponseDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? email, String? token});
}

/// @nodoc
class __$LoginResponseDataModelCopyWithImpl<$Res>
    extends _$LoginResponseDataModelCopyWithImpl<$Res>
    implements _$LoginResponseDataModelCopyWith<$Res> {
  __$LoginResponseDataModelCopyWithImpl(_LoginResponseDataModel _value,
      $Res Function(_LoginResponseDataModel) _then)
      : super(_value, (v) => _then(v as _LoginResponseDataModel));

  @override
  _LoginResponseDataModel get _value => super._value as _LoginResponseDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_LoginResponseDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDataModel implements _LoginResponseDataModel {
  const _$_LoginResponseDataModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.token});

  factory _$_LoginResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginResponseDataModel(id: $id, name: $name, email: $email, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$LoginResponseDataModelCopyWith<_LoginResponseDataModel> get copyWith =>
      __$LoginResponseDataModelCopyWithImpl<_LoginResponseDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDataModelToJson(this);
  }
}

abstract class _LoginResponseDataModel implements LoginResponseDataModel {
  const factory _LoginResponseDataModel(
      {required final int? id,
      required final String? name,
      required final String? email,
      required final String? token}) = _$_LoginResponseDataModel;

  factory _LoginResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDataModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseDataModelCopyWith<_LoginResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
