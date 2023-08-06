// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishData> data) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WishData> data)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishData> data)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistLoadingState value) loading,
    required TResult Function(_WishlistSuccessfulState value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadingState value)? loading,
    TResult? Function(_WishlistSuccessfulState value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadingState value)? loading,
    TResult Function(_WishlistSuccessfulState value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WishlistLoadingStateCopyWith<$Res> {
  factory _$$_WishlistLoadingStateCopyWith(_$_WishlistLoadingState value,
          $Res Function(_$_WishlistLoadingState) then) =
      __$$_WishlistLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WishlistLoadingStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_WishlistLoadingState>
    implements _$$_WishlistLoadingStateCopyWith<$Res> {
  __$$_WishlistLoadingStateCopyWithImpl(_$_WishlistLoadingState _value,
      $Res Function(_$_WishlistLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WishlistLoadingState implements _WishlistLoadingState {
  const _$_WishlistLoadingState();

  @override
  String toString() {
    return 'WishlistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WishlistLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishData> data) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WishData> data)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishData> data)? successful,
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
    required TResult Function(_WishlistLoadingState value) loading,
    required TResult Function(_WishlistSuccessfulState value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadingState value)? loading,
    TResult? Function(_WishlistSuccessfulState value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadingState value)? loading,
    TResult Function(_WishlistSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WishlistLoadingState implements WishlistState {
  const factory _WishlistLoadingState() = _$_WishlistLoadingState;
}

/// @nodoc
abstract class _$$_WishlistSuccessfulStateCopyWith<$Res> {
  factory _$$_WishlistSuccessfulStateCopyWith(_$_WishlistSuccessfulState value,
          $Res Function(_$_WishlistSuccessfulState) then) =
      __$$_WishlistSuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WishData> data});
}

/// @nodoc
class __$$_WishlistSuccessfulStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_WishlistSuccessfulState>
    implements _$$_WishlistSuccessfulStateCopyWith<$Res> {
  __$$_WishlistSuccessfulStateCopyWithImpl(_$_WishlistSuccessfulState _value,
      $Res Function(_$_WishlistSuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_WishlistSuccessfulState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WishData>,
    ));
  }
}

/// @nodoc

class _$_WishlistSuccessfulState implements _WishlistSuccessfulState {
  const _$_WishlistSuccessfulState({required final List<WishData> data})
      : _data = data;

  final List<WishData> _data;
  @override
  List<WishData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WishlistState.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistSuccessfulState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistSuccessfulStateCopyWith<_$_WishlistSuccessfulState>
      get copyWith =>
          __$$_WishlistSuccessfulStateCopyWithImpl<_$_WishlistSuccessfulState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishData> data) successful,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<WishData> data)? successful,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishData> data)? successful,
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
    required TResult Function(_WishlistLoadingState value) loading,
    required TResult Function(_WishlistSuccessfulState value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadingState value)? loading,
    TResult? Function(_WishlistSuccessfulState value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadingState value)? loading,
    TResult Function(_WishlistSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _WishlistSuccessfulState implements WishlistState {
  const factory _WishlistSuccessfulState({required final List<WishData> data}) =
      _$_WishlistSuccessfulState;

  List<WishData> get data;
  @JsonKey(ignore: true)
  _$$_WishlistSuccessfulStateCopyWith<_$_WishlistSuccessfulState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(WishData newWish) add,
    required TResult Function(WishData updateWish) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(WishData newWish)? add,
    TResult? Function(WishData updateWish)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(WishData newWish)? add,
    TResult Function(WishData updateWish)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistLoadEvent value) load,
    required TResult Function(_WishlistAddEvent value) add,
    required TResult Function(_WishlistUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadEvent value)? load,
    TResult? Function(_WishlistAddEvent value)? add,
    TResult? Function(_WishlistUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadEvent value)? load,
    TResult Function(_WishlistAddEvent value)? add,
    TResult Function(_WishlistUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WishlistLoadEventCopyWith<$Res> {
  factory _$$_WishlistLoadEventCopyWith(_$_WishlistLoadEvent value,
          $Res Function(_$_WishlistLoadEvent) then) =
      __$$_WishlistLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WishlistLoadEventCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_WishlistLoadEvent>
    implements _$$_WishlistLoadEventCopyWith<$Res> {
  __$$_WishlistLoadEventCopyWithImpl(
      _$_WishlistLoadEvent _value, $Res Function(_$_WishlistLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WishlistLoadEvent implements _WishlistLoadEvent {
  const _$_WishlistLoadEvent();

  @override
  String toString() {
    return 'WishlistEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WishlistLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(WishData newWish) add,
    required TResult Function(WishData updateWish) update,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(WishData newWish)? add,
    TResult? Function(WishData updateWish)? update,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(WishData newWish)? add,
    TResult Function(WishData updateWish)? update,
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
    required TResult Function(_WishlistLoadEvent value) load,
    required TResult Function(_WishlistAddEvent value) add,
    required TResult Function(_WishlistUpdateEvent value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadEvent value)? load,
    TResult? Function(_WishlistAddEvent value)? add,
    TResult? Function(_WishlistUpdateEvent value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadEvent value)? load,
    TResult Function(_WishlistAddEvent value)? add,
    TResult Function(_WishlistUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _WishlistLoadEvent implements WishlistEvent {
  const factory _WishlistLoadEvent() = _$_WishlistLoadEvent;
}

/// @nodoc
abstract class _$$_WishlistAddEventCopyWith<$Res> {
  factory _$$_WishlistAddEventCopyWith(
          _$_WishlistAddEvent value, $Res Function(_$_WishlistAddEvent) then) =
      __$$_WishlistAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({WishData newWish});

  $WishDataCopyWith<$Res> get newWish;
}

/// @nodoc
class __$$_WishlistAddEventCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_WishlistAddEvent>
    implements _$$_WishlistAddEventCopyWith<$Res> {
  __$$_WishlistAddEventCopyWithImpl(
      _$_WishlistAddEvent _value, $Res Function(_$_WishlistAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newWish = null,
  }) {
    return _then(_$_WishlistAddEvent(
      newWish: null == newWish
          ? _value.newWish
          : newWish // ignore: cast_nullable_to_non_nullable
              as WishData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WishDataCopyWith<$Res> get newWish {
    return $WishDataCopyWith<$Res>(_value.newWish, (value) {
      return _then(_value.copyWith(newWish: value));
    });
  }
}

/// @nodoc

class _$_WishlistAddEvent implements _WishlistAddEvent {
  const _$_WishlistAddEvent({required this.newWish});

  @override
  final WishData newWish;

  @override
  String toString() {
    return 'WishlistEvent.add(newWish: $newWish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistAddEvent &&
            (identical(other.newWish, newWish) || other.newWish == newWish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newWish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistAddEventCopyWith<_$_WishlistAddEvent> get copyWith =>
      __$$_WishlistAddEventCopyWithImpl<_$_WishlistAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(WishData newWish) add,
    required TResult Function(WishData updateWish) update,
  }) {
    return add(newWish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(WishData newWish)? add,
    TResult? Function(WishData updateWish)? update,
  }) {
    return add?.call(newWish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(WishData newWish)? add,
    TResult Function(WishData updateWish)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(newWish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistLoadEvent value) load,
    required TResult Function(_WishlistAddEvent value) add,
    required TResult Function(_WishlistUpdateEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadEvent value)? load,
    TResult? Function(_WishlistAddEvent value)? add,
    TResult? Function(_WishlistUpdateEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadEvent value)? load,
    TResult Function(_WishlistAddEvent value)? add,
    TResult Function(_WishlistUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _WishlistAddEvent implements WishlistEvent {
  const factory _WishlistAddEvent({required final WishData newWish}) =
      _$_WishlistAddEvent;

  WishData get newWish;
  @JsonKey(ignore: true)
  _$$_WishlistAddEventCopyWith<_$_WishlistAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WishlistUpdateEventCopyWith<$Res> {
  factory _$$_WishlistUpdateEventCopyWith(_$_WishlistUpdateEvent value,
          $Res Function(_$_WishlistUpdateEvent) then) =
      __$$_WishlistUpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({WishData updateWish});

  $WishDataCopyWith<$Res> get updateWish;
}

/// @nodoc
class __$$_WishlistUpdateEventCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_WishlistUpdateEvent>
    implements _$$_WishlistUpdateEventCopyWith<$Res> {
  __$$_WishlistUpdateEventCopyWithImpl(_$_WishlistUpdateEvent _value,
      $Res Function(_$_WishlistUpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateWish = null,
  }) {
    return _then(_$_WishlistUpdateEvent(
      updateWish: null == updateWish
          ? _value.updateWish
          : updateWish // ignore: cast_nullable_to_non_nullable
              as WishData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WishDataCopyWith<$Res> get updateWish {
    return $WishDataCopyWith<$Res>(_value.updateWish, (value) {
      return _then(_value.copyWith(updateWish: value));
    });
  }
}

/// @nodoc

class _$_WishlistUpdateEvent implements _WishlistUpdateEvent {
  const _$_WishlistUpdateEvent({required this.updateWish});

  @override
  final WishData updateWish;

  @override
  String toString() {
    return 'WishlistEvent.update(updateWish: $updateWish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistUpdateEvent &&
            (identical(other.updateWish, updateWish) ||
                other.updateWish == updateWish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateWish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistUpdateEventCopyWith<_$_WishlistUpdateEvent> get copyWith =>
      __$$_WishlistUpdateEventCopyWithImpl<_$_WishlistUpdateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(WishData newWish) add,
    required TResult Function(WishData updateWish) update,
  }) {
    return update(updateWish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(WishData newWish)? add,
    TResult? Function(WishData updateWish)? update,
  }) {
    return update?.call(updateWish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(WishData newWish)? add,
    TResult Function(WishData updateWish)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(updateWish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistLoadEvent value) load,
    required TResult Function(_WishlistAddEvent value) add,
    required TResult Function(_WishlistUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistLoadEvent value)? load,
    TResult? Function(_WishlistAddEvent value)? add,
    TResult? Function(_WishlistUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistLoadEvent value)? load,
    TResult Function(_WishlistAddEvent value)? add,
    TResult Function(_WishlistUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _WishlistUpdateEvent implements WishlistEvent {
  const factory _WishlistUpdateEvent({required final WishData updateWish}) =
      _$_WishlistUpdateEvent;

  WishData get updateWish;
  @JsonKey(ignore: true)
  _$$_WishlistUpdateEventCopyWith<_$_WishlistUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
