// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceData data) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceData data)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceData data)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceLoadingState value) loading,
    required TResult Function(_PlaceSuccessfulState value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceLoadingState value)? loading,
    TResult? Function(_PlaceSuccessfulState value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceLoadingState value)? loading,
    TResult Function(_PlaceSuccessfulState value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlaceLoadingStateCopyWith<$Res> {
  factory _$$_PlaceLoadingStateCopyWith(_$_PlaceLoadingState value,
          $Res Function(_$_PlaceLoadingState) then) =
      __$$_PlaceLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlaceLoadingStateCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$_PlaceLoadingState>
    implements _$$_PlaceLoadingStateCopyWith<$Res> {
  __$$_PlaceLoadingStateCopyWithImpl(
      _$_PlaceLoadingState _value, $Res Function(_$_PlaceLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlaceLoadingState implements _PlaceLoadingState {
  const _$_PlaceLoadingState();

  @override
  String toString() {
    return 'PlaceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlaceLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceData data) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceData data)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceData data)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceLoadingState value) loading,
    required TResult Function(_PlaceSuccessfulState value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceLoadingState value)? loading,
    TResult? Function(_PlaceSuccessfulState value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceLoadingState value)? loading,
    TResult Function(_PlaceSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlaceLoadingState implements PlaceState {
  const factory _PlaceLoadingState() = _$_PlaceLoadingState;
}

/// @nodoc
abstract class _$$_PlaceSuccessfulStateCopyWith<$Res> {
  factory _$$_PlaceSuccessfulStateCopyWith(_$_PlaceSuccessfulState value,
          $Res Function(_$_PlaceSuccessfulState) then) =
      __$$_PlaceSuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceData data});

  $PlaceDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PlaceSuccessfulStateCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$_PlaceSuccessfulState>
    implements _$$_PlaceSuccessfulStateCopyWith<$Res> {
  __$$_PlaceSuccessfulStateCopyWithImpl(_$_PlaceSuccessfulState _value,
      $Res Function(_$_PlaceSuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_PlaceSuccessfulState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaceData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceDataCopyWith<$Res> get data {
    return $PlaceDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_PlaceSuccessfulState implements _PlaceSuccessfulState {
  const _$_PlaceSuccessfulState({required this.data});

  @override
  final PlaceData data;

  @override
  String toString() {
    return 'PlaceState.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceSuccessfulState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceSuccessfulStateCopyWith<_$_PlaceSuccessfulState> get copyWith =>
      __$$_PlaceSuccessfulStateCopyWithImpl<_$_PlaceSuccessfulState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceData data) successful,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceData data)? successful,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceData data)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceLoadingState value) loading,
    required TResult Function(_PlaceSuccessfulState value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceLoadingState value)? loading,
    TResult? Function(_PlaceSuccessfulState value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceLoadingState value)? loading,
    TResult Function(_PlaceSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _PlaceSuccessfulState implements PlaceState {
  const factory _PlaceSuccessfulState({required final PlaceData data}) =
      _$_PlaceSuccessfulState;

  PlaceData get data;
  @JsonKey(ignore: true)
  _$$_PlaceSuccessfulStateCopyWith<_$_PlaceSuccessfulState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEventCopyWith<$Res> {
  factory $PlaceEventCopyWith(
          PlaceEvent value, $Res Function(PlaceEvent) then) =
      _$PlaceEventCopyWithImpl<$Res, PlaceEvent>;
}

/// @nodoc
class _$PlaceEventCopyWithImpl<$Res, $Val extends PlaceEvent>
    implements $PlaceEventCopyWith<$Res> {
  _$PlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlaceLoadEventCopyWith<$Res> {
  factory _$$_PlaceLoadEventCopyWith(
          _$_PlaceLoadEvent value, $Res Function(_$_PlaceLoadEvent) then) =
      __$$_PlaceLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlaceLoadEventCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$_PlaceLoadEvent>
    implements _$$_PlaceLoadEventCopyWith<$Res> {
  __$$_PlaceLoadEventCopyWithImpl(
      _$_PlaceLoadEvent _value, $Res Function(_$_PlaceLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlaceLoadEvent implements _PlaceLoadEvent {
  const _$_PlaceLoadEvent();

  @override
  String toString() {
    return 'PlaceEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlaceLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _PlaceLoadEvent implements PlaceEvent {
  const factory _PlaceLoadEvent() = _$_PlaceLoadEvent;
}
