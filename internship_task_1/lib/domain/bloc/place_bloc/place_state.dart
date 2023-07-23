part of 'place_bloc.dart';

@freezed
class PlaceState with _$PlaceState {
  const factory PlaceState.loading() = _PlaceLoadingState;
  const factory PlaceState.successful({required PlaceData data}) = _PlaceSuccessfulState;
}