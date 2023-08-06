import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';
import 'package:internship_task_1/domain/repository/wishlist_repository_interface.dart';

part 'wishlist_state.dart';
part 'wishlist_event.dart';
part 'wishlist_bloc.freezed.dart';

@prod
@dev
@test
@singleton
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistRepository _repository;

  WishlistBloc(this._repository) : super(const WishlistState.loading()) {
    on<_WishlistLoadEvent>(_onWishlistLoadEvent);
    on<_WishlistUpdateEvent>(_onWishlistUpdateEvent);
    on<_WishlistAddEvent>(_onWishlistAddEvent);
  }

  void _onWishlistLoadEvent(_WishlistLoadEvent event, Emitter<WishlistState> emit) async {
    try {
      final result = await _repository.getAll();
      result.sort((a,b)=>a.title.compareTo(b.title));
      emit(WishlistState.successful(data: result));
    } catch(error) {
      print(error);
    }
  }

  void _onWishlistAddEvent(_WishlistAddEvent event, Emitter<WishlistState> emit) async {
    try {
      await _repository.post(data: event.newWish);
      final result = await _repository.getAll();
      result.sort((a,b)=>a.title.compareTo(b.title));
      emit(WishlistState.successful(data: result));
    } catch(error) {
      print(error);
    }
  }

  void _onWishlistUpdateEvent(_WishlistUpdateEvent event, Emitter<WishlistState> emit) async {
    try {
      await _repository.update(data: event.updateWish);
      final result = await _repository.getAll();
      result.sort((a,b)=>a.title.compareTo(b.title));
      emit(WishlistState.successful(data: result));
    } catch(error) {
      print(error);
    }
  }



}