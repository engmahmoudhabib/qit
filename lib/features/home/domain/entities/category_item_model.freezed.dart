// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) {
  return _CategoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  RatingResponseModel? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) then) =
      _$CategoryItemModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      double price,
      String? description,
      String? category,
      String? image,
      RatingResponseModel? rating});

  $RatingResponseModelCopyWith<$Res>? get rating;
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._value, this._then);

  final CategoryItemModel _value;
  // ignore: unused_field
  final $Res Function(CategoryItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingResponseModel?,
    ));
  }

  @override
  $RatingResponseModelCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingResponseModelCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc
abstract class _$CategoryItemModelCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$CategoryItemModelCopyWith(
          _CategoryItemModel value, $Res Function(_CategoryItemModel) then) =
      __$CategoryItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      double price,
      String? description,
      String? category,
      String? image,
      RatingResponseModel? rating});

  @override
  $RatingResponseModelCopyWith<$Res>? get rating;
}

/// @nodoc
class __$CategoryItemModelCopyWithImpl<$Res>
    extends _$CategoryItemModelCopyWithImpl<$Res>
    implements _$CategoryItemModelCopyWith<$Res> {
  __$CategoryItemModelCopyWithImpl(
      _CategoryItemModel _value, $Res Function(_CategoryItemModel) _then)
      : super(_value, (v) => _then(v as _CategoryItemModel));

  @override
  _CategoryItemModel get _value => super._value as _CategoryItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_CategoryItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryItemModel implements _CategoryItemModel {
  const _$_CategoryItemModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory _$_CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final double price;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? image;
  @override
  final RatingResponseModel? rating;

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$CategoryItemModelCopyWith<_CategoryItemModel> get copyWith =>
      __$CategoryItemModelCopyWithImpl<_CategoryItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemModelToJson(this);
  }
}

abstract class _CategoryItemModel implements CategoryItemModel {
  const factory _CategoryItemModel(
      {required final int? id,
      required final String? title,
      required final double price,
      required final String? description,
      required final String? category,
      required final String? image,
      required final RatingResponseModel? rating}) = _$_CategoryItemModel;

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryItemModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  RatingResponseModel? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryItemModelCopyWith<_CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
