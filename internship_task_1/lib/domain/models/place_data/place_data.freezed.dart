// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceData _$PlaceDataFromJson(Map<String, dynamic> json) {
  return _PlaceData.fromJson(json);
}

/// @nodoc
mixin _$PlaceData {
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'web_link')
  String get webLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_list')
  List<ProductData> get productList => throw _privateConstructorUsedError;
  @JsonKey(name: 'entertainment_list')
  List<EntertainmentData> get entertainmentList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationData get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDataCopyWith<PlaceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDataCopyWith<$Res> {
  factory $PlaceDataCopyWith(PlaceData value, $Res Function(PlaceData) then) =
      _$PlaceDataCopyWithImpl<$Res, PlaceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'web_link') String webLink,
      @JsonKey(name: 'product_list') List<ProductData> productList,
      @JsonKey(name: 'entertainment_list')
      List<EntertainmentData> entertainmentList,
      @JsonKey(name: 'location') LocationData location});

  $LocationDataCopyWith<$Res> get location;
}

/// @nodoc
class _$PlaceDataCopyWithImpl<$Res, $Val extends PlaceData>
    implements $PlaceDataCopyWith<$Res> {
  _$PlaceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? description = null,
    Object? date = null,
    Object? webLink = null,
    Object? productList = null,
    Object? entertainmentList = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      webLink: null == webLink
          ? _value.webLink
          : webLink // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      entertainmentList: null == entertainmentList
          ? _value.entertainmentList
          : entertainmentList // ignore: cast_nullable_to_non_nullable
              as List<EntertainmentData>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get location {
    return $LocationDataCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceDataCopyWith<$Res> implements $PlaceDataCopyWith<$Res> {
  factory _$$_PlaceDataCopyWith(
          _$_PlaceData value, $Res Function(_$_PlaceData) then) =
      __$$_PlaceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'web_link') String webLink,
      @JsonKey(name: 'product_list') List<ProductData> productList,
      @JsonKey(name: 'entertainment_list')
      List<EntertainmentData> entertainmentList,
      @JsonKey(name: 'location') LocationData location});

  @override
  $LocationDataCopyWith<$Res> get location;
}

/// @nodoc
class __$$_PlaceDataCopyWithImpl<$Res>
    extends _$PlaceDataCopyWithImpl<$Res, _$_PlaceData>
    implements _$$_PlaceDataCopyWith<$Res> {
  __$$_PlaceDataCopyWithImpl(
      _$_PlaceData _value, $Res Function(_$_PlaceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? description = null,
    Object? date = null,
    Object? webLink = null,
    Object? productList = null,
    Object? entertainmentList = null,
    Object? location = null,
  }) {
    return _then(_$_PlaceData(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      webLink: null == webLink
          ? _value.webLink
          : webLink // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      entertainmentList: null == entertainmentList
          ? _value._entertainmentList
          : entertainmentList // ignore: cast_nullable_to_non_nullable
              as List<EntertainmentData>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceData implements _PlaceData {
  const _$_PlaceData(
      {@JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'web_link') required this.webLink,
      @JsonKey(name: 'product_list')
      required final List<ProductData> productList,
      @JsonKey(name: 'entertainment_list')
      required final List<EntertainmentData> entertainmentList,
      @JsonKey(name: 'location') required this.location})
      : _images = images,
        _productList = productList,
        _entertainmentList = entertainmentList;

  factory _$_PlaceData.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDataFromJson(json);

  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'date')
  final int date;
  @override
  @JsonKey(name: 'web_link')
  final String webLink;
  final List<ProductData> _productList;
  @override
  @JsonKey(name: 'product_list')
  List<ProductData> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  final List<EntertainmentData> _entertainmentList;
  @override
  @JsonKey(name: 'entertainment_list')
  List<EntertainmentData> get entertainmentList {
    if (_entertainmentList is EqualUnmodifiableListView)
      return _entertainmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entertainmentList);
  }

  @override
  @JsonKey(name: 'location')
  final LocationData location;

  @override
  String toString() {
    return 'PlaceData(images: $images, description: $description, date: $date, webLink: $webLink, productList: $productList, entertainmentList: $entertainmentList, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceData &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.webLink, webLink) || other.webLink == webLink) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other._entertainmentList, _entertainmentList) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      description,
      date,
      webLink,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_entertainmentList),
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDataCopyWith<_$_PlaceData> get copyWith =>
      __$$_PlaceDataCopyWithImpl<_$_PlaceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDataToJson(
      this,
    );
  }
}

abstract class _PlaceData implements PlaceData {
  const factory _PlaceData(
          {@JsonKey(name: 'images') required final List<String> images,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'date') required final int date,
          @JsonKey(name: 'web_link') required final String webLink,
          @JsonKey(name: 'product_list')
          required final List<ProductData> productList,
          @JsonKey(name: 'entertainment_list')
          required final List<EntertainmentData> entertainmentList,
          @JsonKey(name: 'location') required final LocationData location}) =
      _$_PlaceData;

  factory _PlaceData.fromJson(Map<String, dynamic> json) =
      _$_PlaceData.fromJson;

  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'date')
  int get date;
  @override
  @JsonKey(name: 'web_link')
  String get webLink;
  @override
  @JsonKey(name: 'product_list')
  List<ProductData> get productList;
  @override
  @JsonKey(name: 'entertainment_list')
  List<EntertainmentData> get entertainmentList;
  @override
  @JsonKey(name: 'location')
  LocationData get location;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDataCopyWith<_$_PlaceData> get copyWith =>
      throw _privateConstructorUsedError;
}
