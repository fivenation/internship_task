import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/repository/repository_interface.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';

part 'place_state.dart';
part 'place_event.dart';
part 'place_bloc.freezed.dart';

@prod
@dev
@test
@singleton
class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final Repository _repository;

  PlaceBloc(this._repository) : super(const PlaceState.loading()) {
    on<_PlaceLoadEvent>(_onPlaceLoadEvent);
  }

  void _onPlaceLoadEvent(_PlaceLoadEvent event, Emitter<PlaceState> emit) async {
    final place = await _repository.getPlace();
    emit(PlaceState.successful(data: place));
  }

}