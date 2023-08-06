part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.load() = _WishlistLoadEvent;
  const factory WishlistEvent.add({required WishData newWish}) = _WishlistAddEvent;
  const factory WishlistEvent.update({required WishData updateWish}) = _WishlistUpdateEvent;
}