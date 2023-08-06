part of 'guest_bloc.dart';

@freezed
class GuestEvent with _$GuestEvent {
  const factory GuestEvent.load() = _GuestLoadEvent;
  const factory GuestEvent.sortBy({required String field}) = _GuestSortByEvent;
  const factory GuestEvent.add({required GuestData newGuest}) = _GuestAddEvent;
  const factory GuestEvent.remove({required GuestData deleteGuest}) = _GuestRemoveEvent;
  const factory GuestEvent.update({required GuestData updateGuest}) = _GuestUpdateEvent;
}