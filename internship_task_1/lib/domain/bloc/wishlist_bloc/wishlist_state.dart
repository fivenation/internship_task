part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.loading() = _WishlistLoadingState;
  const factory WishlistState.successful({required List<WishData> data}) = _WishlistSuccessfulState;
}