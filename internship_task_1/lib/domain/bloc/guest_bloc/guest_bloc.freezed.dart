// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GuestData> data, String sortBy) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GuestData> data, String sortBy)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GuestData> data, String sortBy)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadingState value) loading,
    required TResult Function(_GuestSuccessfulState value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadingState value)? loading,
    TResult? Function(_GuestSuccessfulState value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadingState value)? loading,
    TResult Function(_GuestSuccessfulState value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestStateCopyWith<$Res> {
  factory $GuestStateCopyWith(
          GuestState value, $Res Function(GuestState) then) =
      _$GuestStateCopyWithImpl<$Res, GuestState>;
}

/// @nodoc
class _$GuestStateCopyWithImpl<$Res, $Val extends GuestState>
    implements $GuestStateCopyWith<$Res> {
  _$GuestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GuestLoadingStateCopyWith<$Res> {
  factory _$$_GuestLoadingStateCopyWith(_$_GuestLoadingState value,
          $Res Function(_$_GuestLoadingState) then) =
      __$$_GuestLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GuestLoadingStateCopyWithImpl<$Res>
    extends _$GuestStateCopyWithImpl<$Res, _$_GuestLoadingState>
    implements _$$_GuestLoadingStateCopyWith<$Res> {
  __$$_GuestLoadingStateCopyWithImpl(
      _$_GuestLoadingState _value, $Res Function(_$_GuestLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GuestLoadingState implements _GuestLoadingState {
  const _$_GuestLoadingState();

  @override
  String toString() {
    return 'GuestState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GuestLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GuestData> data, String sortBy) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GuestData> data, String sortBy)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GuestData> data, String sortBy)? successful,
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
    required TResult Function(_GuestLoadingState value) loading,
    required TResult Function(_GuestSuccessfulState value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadingState value)? loading,
    TResult? Function(_GuestSuccessfulState value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadingState value)? loading,
    TResult Function(_GuestSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GuestLoadingState implements GuestState {
  const factory _GuestLoadingState() = _$_GuestLoadingState;
}

/// @nodoc
abstract class _$$_GuestSuccessfulStateCopyWith<$Res> {
  factory _$$_GuestSuccessfulStateCopyWith(_$_GuestSuccessfulState value,
          $Res Function(_$_GuestSuccessfulState) then) =
      __$$_GuestSuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GuestData> data, String sortBy});
}

/// @nodoc
class __$$_GuestSuccessfulStateCopyWithImpl<$Res>
    extends _$GuestStateCopyWithImpl<$Res, _$_GuestSuccessfulState>
    implements _$$_GuestSuccessfulStateCopyWith<$Res> {
  __$$_GuestSuccessfulStateCopyWithImpl(_$_GuestSuccessfulState _value,
      $Res Function(_$_GuestSuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? sortBy = null,
  }) {
    return _then(_$_GuestSuccessfulState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GuestData>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GuestSuccessfulState implements _GuestSuccessfulState {
  const _$_GuestSuccessfulState(
      {required final List<GuestData> data, required this.sortBy})
      : _data = data;

  final List<GuestData> _data;
  @override
  List<GuestData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String sortBy;

  @override
  String toString() {
    return 'GuestState.successful(data: $data, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestSuccessfulState &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestSuccessfulStateCopyWith<_$_GuestSuccessfulState> get copyWith =>
      __$$_GuestSuccessfulStateCopyWithImpl<_$_GuestSuccessfulState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GuestData> data, String sortBy) successful,
  }) {
    return successful(data, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GuestData> data, String sortBy)? successful,
  }) {
    return successful?.call(data, sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GuestData> data, String sortBy)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data, sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadingState value) loading,
    required TResult Function(_GuestSuccessfulState value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadingState value)? loading,
    TResult? Function(_GuestSuccessfulState value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadingState value)? loading,
    TResult Function(_GuestSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _GuestSuccessfulState implements GuestState {
  const factory _GuestSuccessfulState(
      {required final List<GuestData> data,
      required final String sortBy}) = _$_GuestSuccessfulState;

  List<GuestData> get data;
  String get sortBy;
  @JsonKey(ignore: true)
  _$$_GuestSuccessfulStateCopyWith<_$_GuestSuccessfulState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestEventCopyWith<$Res> {
  factory $GuestEventCopyWith(
          GuestEvent value, $Res Function(GuestEvent) then) =
      _$GuestEventCopyWithImpl<$Res, GuestEvent>;
}

/// @nodoc
class _$GuestEventCopyWithImpl<$Res, $Val extends GuestEvent>
    implements $GuestEventCopyWith<$Res> {
  _$GuestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GuestLoadEventCopyWith<$Res> {
  factory _$$_GuestLoadEventCopyWith(
          _$_GuestLoadEvent value, $Res Function(_$_GuestLoadEvent) then) =
      __$$_GuestLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GuestLoadEventCopyWithImpl<$Res>
    extends _$GuestEventCopyWithImpl<$Res, _$_GuestLoadEvent>
    implements _$$_GuestLoadEventCopyWith<$Res> {
  __$$_GuestLoadEventCopyWithImpl(
      _$_GuestLoadEvent _value, $Res Function(_$_GuestLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GuestLoadEvent implements _GuestLoadEvent {
  const _$_GuestLoadEvent();

  @override
  String toString() {
    return 'GuestEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GuestLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
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
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _GuestLoadEvent implements GuestEvent {
  const factory _GuestLoadEvent() = _$_GuestLoadEvent;
}

/// @nodoc
abstract class _$$_GuestSortByEventCopyWith<$Res> {
  factory _$$_GuestSortByEventCopyWith(
          _$_GuestSortByEvent value, $Res Function(_$_GuestSortByEvent) then) =
      __$$_GuestSortByEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String field});
}

/// @nodoc
class __$$_GuestSortByEventCopyWithImpl<$Res>
    extends _$GuestEventCopyWithImpl<$Res, _$_GuestSortByEvent>
    implements _$$_GuestSortByEventCopyWith<$Res> {
  __$$_GuestSortByEventCopyWithImpl(
      _$_GuestSortByEvent _value, $Res Function(_$_GuestSortByEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$_GuestSortByEvent(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GuestSortByEvent implements _GuestSortByEvent {
  const _$_GuestSortByEvent({required this.field});

  @override
  final String field;

  @override
  String toString() {
    return 'GuestEvent.sortBy(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestSortByEvent &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestSortByEventCopyWith<_$_GuestSortByEvent> get copyWith =>
      __$$_GuestSortByEventCopyWithImpl<_$_GuestSortByEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) {
    return sortBy(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) {
    return sortBy?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) {
    return sortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) {
    return sortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(this);
    }
    return orElse();
  }
}

abstract class _GuestSortByEvent implements GuestEvent {
  const factory _GuestSortByEvent({required final String field}) =
      _$_GuestSortByEvent;

  String get field;
  @JsonKey(ignore: true)
  _$$_GuestSortByEventCopyWith<_$_GuestSortByEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GuestAddEventCopyWith<$Res> {
  factory _$$_GuestAddEventCopyWith(
          _$_GuestAddEvent value, $Res Function(_$_GuestAddEvent) then) =
      __$$_GuestAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({GuestData newGuest});

  $GuestDataCopyWith<$Res> get newGuest;
}

/// @nodoc
class __$$_GuestAddEventCopyWithImpl<$Res>
    extends _$GuestEventCopyWithImpl<$Res, _$_GuestAddEvent>
    implements _$$_GuestAddEventCopyWith<$Res> {
  __$$_GuestAddEventCopyWithImpl(
      _$_GuestAddEvent _value, $Res Function(_$_GuestAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newGuest = null,
  }) {
    return _then(_$_GuestAddEvent(
      newGuest: null == newGuest
          ? _value.newGuest
          : newGuest // ignore: cast_nullable_to_non_nullable
              as GuestData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestDataCopyWith<$Res> get newGuest {
    return $GuestDataCopyWith<$Res>(_value.newGuest, (value) {
      return _then(_value.copyWith(newGuest: value));
    });
  }
}

/// @nodoc

class _$_GuestAddEvent implements _GuestAddEvent {
  const _$_GuestAddEvent({required this.newGuest});

  @override
  final GuestData newGuest;

  @override
  String toString() {
    return 'GuestEvent.add(newGuest: $newGuest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestAddEvent &&
            (identical(other.newGuest, newGuest) ||
                other.newGuest == newGuest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newGuest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestAddEventCopyWith<_$_GuestAddEvent> get copyWith =>
      __$$_GuestAddEventCopyWithImpl<_$_GuestAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) {
    return add(newGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) {
    return add?.call(newGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(newGuest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _GuestAddEvent implements GuestEvent {
  const factory _GuestAddEvent({required final GuestData newGuest}) =
      _$_GuestAddEvent;

  GuestData get newGuest;
  @JsonKey(ignore: true)
  _$$_GuestAddEventCopyWith<_$_GuestAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GuestRemoveEventCopyWith<$Res> {
  factory _$$_GuestRemoveEventCopyWith(
          _$_GuestRemoveEvent value, $Res Function(_$_GuestRemoveEvent) then) =
      __$$_GuestRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({GuestData deleteGuest});

  $GuestDataCopyWith<$Res> get deleteGuest;
}

/// @nodoc
class __$$_GuestRemoveEventCopyWithImpl<$Res>
    extends _$GuestEventCopyWithImpl<$Res, _$_GuestRemoveEvent>
    implements _$$_GuestRemoveEventCopyWith<$Res> {
  __$$_GuestRemoveEventCopyWithImpl(
      _$_GuestRemoveEvent _value, $Res Function(_$_GuestRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteGuest = null,
  }) {
    return _then(_$_GuestRemoveEvent(
      deleteGuest: null == deleteGuest
          ? _value.deleteGuest
          : deleteGuest // ignore: cast_nullable_to_non_nullable
              as GuestData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestDataCopyWith<$Res> get deleteGuest {
    return $GuestDataCopyWith<$Res>(_value.deleteGuest, (value) {
      return _then(_value.copyWith(deleteGuest: value));
    });
  }
}

/// @nodoc

class _$_GuestRemoveEvent implements _GuestRemoveEvent {
  const _$_GuestRemoveEvent({required this.deleteGuest});

  @override
  final GuestData deleteGuest;

  @override
  String toString() {
    return 'GuestEvent.remove(deleteGuest: $deleteGuest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestRemoveEvent &&
            (identical(other.deleteGuest, deleteGuest) ||
                other.deleteGuest == deleteGuest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteGuest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestRemoveEventCopyWith<_$_GuestRemoveEvent> get copyWith =>
      __$$_GuestRemoveEventCopyWithImpl<_$_GuestRemoveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) {
    return remove(deleteGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) {
    return remove?.call(deleteGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(deleteGuest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _GuestRemoveEvent implements GuestEvent {
  const factory _GuestRemoveEvent({required final GuestData deleteGuest}) =
      _$_GuestRemoveEvent;

  GuestData get deleteGuest;
  @JsonKey(ignore: true)
  _$$_GuestRemoveEventCopyWith<_$_GuestRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GuestUpdateEventCopyWith<$Res> {
  factory _$$_GuestUpdateEventCopyWith(
          _$_GuestUpdateEvent value, $Res Function(_$_GuestUpdateEvent) then) =
      __$$_GuestUpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({GuestData updateGuest});

  $GuestDataCopyWith<$Res> get updateGuest;
}

/// @nodoc
class __$$_GuestUpdateEventCopyWithImpl<$Res>
    extends _$GuestEventCopyWithImpl<$Res, _$_GuestUpdateEvent>
    implements _$$_GuestUpdateEventCopyWith<$Res> {
  __$$_GuestUpdateEventCopyWithImpl(
      _$_GuestUpdateEvent _value, $Res Function(_$_GuestUpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateGuest = null,
  }) {
    return _then(_$_GuestUpdateEvent(
      updateGuest: null == updateGuest
          ? _value.updateGuest
          : updateGuest // ignore: cast_nullable_to_non_nullable
              as GuestData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestDataCopyWith<$Res> get updateGuest {
    return $GuestDataCopyWith<$Res>(_value.updateGuest, (value) {
      return _then(_value.copyWith(updateGuest: value));
    });
  }
}

/// @nodoc

class _$_GuestUpdateEvent implements _GuestUpdateEvent {
  const _$_GuestUpdateEvent({required this.updateGuest});

  @override
  final GuestData updateGuest;

  @override
  String toString() {
    return 'GuestEvent.update(updateGuest: $updateGuest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestUpdateEvent &&
            (identical(other.updateGuest, updateGuest) ||
                other.updateGuest == updateGuest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateGuest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestUpdateEventCopyWith<_$_GuestUpdateEvent> get copyWith =>
      __$$_GuestUpdateEventCopyWithImpl<_$_GuestUpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String field) sortBy,
    required TResult Function(GuestData newGuest) add,
    required TResult Function(GuestData deleteGuest) remove,
    required TResult Function(GuestData updateGuest) update,
  }) {
    return update(updateGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String field)? sortBy,
    TResult? Function(GuestData newGuest)? add,
    TResult? Function(GuestData deleteGuest)? remove,
    TResult? Function(GuestData updateGuest)? update,
  }) {
    return update?.call(updateGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String field)? sortBy,
    TResult Function(GuestData newGuest)? add,
    TResult Function(GuestData deleteGuest)? remove,
    TResult Function(GuestData updateGuest)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(updateGuest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestLoadEvent value) load,
    required TResult Function(_GuestSortByEvent value) sortBy,
    required TResult Function(_GuestAddEvent value) add,
    required TResult Function(_GuestRemoveEvent value) remove,
    required TResult Function(_GuestUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestLoadEvent value)? load,
    TResult? Function(_GuestSortByEvent value)? sortBy,
    TResult? Function(_GuestAddEvent value)? add,
    TResult? Function(_GuestRemoveEvent value)? remove,
    TResult? Function(_GuestUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestLoadEvent value)? load,
    TResult Function(_GuestSortByEvent value)? sortBy,
    TResult Function(_GuestAddEvent value)? add,
    TResult Function(_GuestRemoveEvent value)? remove,
    TResult Function(_GuestUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _GuestUpdateEvent implements GuestEvent {
  const factory _GuestUpdateEvent({required final GuestData updateGuest}) =
      _$_GuestUpdateEvent;

  GuestData get updateGuest;
  @JsonKey(ignore: true)
  _$$_GuestUpdateEventCopyWith<_$_GuestUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
