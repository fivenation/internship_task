// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishData _$WishDataFromJson(Map<String, dynamic> json) {
  return _WishData.fromJson(json);
}

/// @nodoc
mixin _$WishData {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_booked')
  bool get isBooked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishDataCopyWith<WishData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishDataCopyWith<$Res> {
  factory $WishDataCopyWith(WishData value, $Res Function(WishData) then) =
      _$WishDataCopyWithImpl<$Res, WishData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'is_booked') bool isBooked});
}

/// @nodoc
class _$WishDataCopyWithImpl<$Res, $Val extends WishData>
    implements $WishDataCopyWith<$Res> {
  _$WishDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? isBooked = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishDataCopyWith<$Res> implements $WishDataCopyWith<$Res> {
  factory _$$_WishDataCopyWith(
          _$_WishData value, $Res Function(_$_WishData) then) =
      __$$_WishDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'is_booked') bool isBooked});
}

/// @nodoc
class __$$_WishDataCopyWithImpl<$Res>
    extends _$WishDataCopyWithImpl<$Res, _$_WishData>
    implements _$$_WishDataCopyWith<$Res> {
  __$$_WishDataCopyWithImpl(
      _$_WishData _value, $Res Function(_$_WishData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? isBooked = null,
  }) {
    return _then(_$_WishData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishData implements _WishData {
  const _$_WishData(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'is_booked') required this.isBooked});

  factory _$_WishData.fromJson(Map<String, dynamic> json) =>
      _$$_WishDataFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'is_booked')
  final bool isBooked;

  @override
  String toString() {
    return 'WishData(title: $title, url: $url, isBooked: $isBooked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, url, isBooked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishDataCopyWith<_$_WishData> get copyWith =>
      __$$_WishDataCopyWithImpl<_$_WishData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishDataToJson(
      this,
    );
  }
}

abstract class _WishData implements WishData {
  const factory _WishData(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'url') required final String url,
      @JsonKey(name: 'is_booked') required final bool isBooked}) = _$_WishData;

  factory _WishData.fromJson(Map<String, dynamic> json) = _$_WishData.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'is_booked')
  bool get isBooked;
  @override
  @JsonKey(ignore: true)
  _$$_WishDataCopyWith<_$_WishData> get copyWith =>
      throw _privateConstructorUsedError;
}
