part of 'guest_bloc.dart';

@freezed
class GuestState with _$GuestState {
  const factory GuestState.loading() = _GuestLoadingState;
  const factory GuestState.successful({required List<GuestData> data, required String sortBy}) = _GuestSuccessfulState;
}