// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestData _$GuestDataFromJson(Map<String, dynamic> json) {
  return _GuestData.fromJson(json);
}

/// @nodoc
mixin _$GuestData {
  @JsonKey(name: 'surname')
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestDataCopyWith<GuestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestDataCopyWith<$Res> {
  factory $GuestDataCopyWith(GuestData value, $Res Function(GuestData) then) =
      _$GuestDataCopyWithImpl<$Res, GuestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'surname') String surname,
      @JsonKey(name: 'firstname') String firstname,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'avatarUrl') String? avatarUrl,
      @JsonKey(name: 'phone') String phone});
}

/// @nodoc
class _$GuestDataCopyWithImpl<$Res, $Val extends GuestData>
    implements $GuestDataCopyWith<$Res> {
  _$GuestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? firstname = null,
    Object? age = null,
    Object? status = null,
    Object? avatarUrl = freezed,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestDataCopyWith<$Res> implements $GuestDataCopyWith<$Res> {
  factory _$$_GuestDataCopyWith(
          _$_GuestData value, $Res Function(_$_GuestData) then) =
      __$$_GuestDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'surname') String surname,
      @JsonKey(name: 'firstname') String firstname,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'avatarUrl') String? avatarUrl,
      @JsonKey(name: 'phone') String phone});
}

/// @nodoc
class __$$_GuestDataCopyWithImpl<$Res>
    extends _$GuestDataCopyWithImpl<$Res, _$_GuestData>
    implements _$$_GuestDataCopyWith<$Res> {
  __$$_GuestDataCopyWithImpl(
      _$_GuestData _value, $Res Function(_$_GuestData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? firstname = null,
    Object? age = null,
    Object? status = null,
    Object? avatarUrl = freezed,
    Object? phone = null,
  }) {
    return _then(_$_GuestData(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestData implements _GuestData {
  const _$_GuestData(
      {@JsonKey(name: 'surname') required this.surname,
      @JsonKey(name: 'firstname') required this.firstname,
      @JsonKey(name: 'age') required this.age,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'avatarUrl') this.avatarUrl,
      @JsonKey(name: 'phone') required this.phone});

  factory _$_GuestData.fromJson(Map<String, dynamic> json) =>
      _$$_GuestDataFromJson(json);

  @override
  @JsonKey(name: 'surname')
  final String surname;
  @override
  @JsonKey(name: 'firstname')
  final String firstname;
  @override
  @JsonKey(name: 'age')
  final int age;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'phone')
  final String phone;

  @override
  String toString() {
    return 'GuestData(surname: $surname, firstname: $firstname, age: $age, status: $status, avatarUrl: $avatarUrl, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestData &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, surname, firstname, age, status, avatarUrl, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestDataCopyWith<_$_GuestData> get copyWith =>
      __$$_GuestDataCopyWithImpl<_$_GuestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestDataToJson(
      this,
    );
  }
}

abstract class _GuestData implements GuestData {
  const factory _GuestData(
      {@JsonKey(name: 'surname') required final String surname,
      @JsonKey(name: 'firstname') required final String firstname,
      @JsonKey(name: 'age') required final int age,
      @JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'avatarUrl') final String? avatarUrl,
      @JsonKey(name: 'phone') required final String phone}) = _$_GuestData;

  factory _GuestData.fromJson(Map<String, dynamic> json) =
      _$_GuestData.fromJson;

  @override
  @JsonKey(name: 'surname')
  String get surname;
  @override
  @JsonKey(name: 'firstname')
  String get firstname;
  @override
  @JsonKey(name: 'age')
  int get age;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_GuestDataCopyWith<_$_GuestData> get copyWith =>
      throw _privateConstructorUsedError;
}
