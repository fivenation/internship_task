// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entertainment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntertainmentData _$EntertainmentDataFromJson(Map<String, dynamic> json) {
  return _EntertainmentData.fromJson(json);
}

/// @nodoc
mixin _$EntertainmentData {
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntertainmentDataCopyWith<EntertainmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntertainmentDataCopyWith<$Res> {
  factory $EntertainmentDataCopyWith(
          EntertainmentData value, $Res Function(EntertainmentData) then) =
      _$EntertainmentDataCopyWithImpl<$Res, EntertainmentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$EntertainmentDataCopyWithImpl<$Res, $Val extends EntertainmentData>
    implements $EntertainmentDataCopyWith<$Res> {
  _$EntertainmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntertainmentDataCopyWith<$Res>
    implements $EntertainmentDataCopyWith<$Res> {
  factory _$$_EntertainmentDataCopyWith(_$_EntertainmentData value,
          $Res Function(_$_EntertainmentData) then) =
      __$$_EntertainmentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$_EntertainmentDataCopyWithImpl<$Res>
    extends _$EntertainmentDataCopyWithImpl<$Res, _$_EntertainmentData>
    implements _$$_EntertainmentDataCopyWith<$Res> {
  __$$_EntertainmentDataCopyWithImpl(
      _$_EntertainmentData _value, $Res Function(_$_EntertainmentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EntertainmentData(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntertainmentData implements _EntertainmentData {
  const _$_EntertainmentData(
      {@JsonKey(name: 'icon_url') required this.iconUrl,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description});

  factory _$_EntertainmentData.fromJson(Map<String, dynamic> json) =>
      _$$_EntertainmentDataFromJson(json);

  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'EntertainmentData(iconUrl: $iconUrl, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntertainmentData &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconUrl, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntertainmentDataCopyWith<_$_EntertainmentData> get copyWith =>
      __$$_EntertainmentDataCopyWithImpl<_$_EntertainmentData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntertainmentDataToJson(
      this,
    );
  }
}

abstract class _EntertainmentData implements EntertainmentData {
  const factory _EntertainmentData(
          {@JsonKey(name: 'icon_url') required final String iconUrl,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description}) =
      _$_EntertainmentData;

  factory _EntertainmentData.fromJson(Map<String, dynamic> json) =
      _$_EntertainmentData.fromJson;

  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_EntertainmentDataCopyWith<_$_EntertainmentData> get copyWith =>
      throw _privateConstructorUsedError;
}
