part of 'place_bloc.dart';

@freezed
class PlaceEvent with _$PlaceEvent {
  const factory PlaceEvent.load() = _PlaceLoadEvent;
}