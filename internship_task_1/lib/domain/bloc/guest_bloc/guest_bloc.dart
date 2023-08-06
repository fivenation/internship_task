import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/domain/repository/guests_repository_interface.dart';

part 'guest_state.dart';
part 'guest_event.dart';
part 'guest_bloc.freezed.dart';

@prod
@dev
@test
@singleton
class GuestBloc extends Bloc<GuestEvent, GuestState> {
  final GuestRepository _repository;

  GuestBloc(this._repository) : super(const GuestState.loading()) {
    on<_GuestLoadEvent>(_onGuestLoadEvent);
    on<_GuestUpdateEvent>(_onGuestUpdateEvent);
    on<_GuestAddEvent>(_onGuestAddEvent);
    on<_GuestRemoveEvent>(_onGuestRemoveEvent);
    on<_GuestSortByEvent>(_onGuestSortByEvent);
  }

  void _onGuestLoadEvent(_GuestLoadEvent event, Emitter<GuestState> emit) async {
    try {
      final result = await _repository.getAll();
      emit(GuestState.successful(data: result, sortBy: state.when(loading: () => "firstname", successful: (data, sortBy) => sortBy)));
    } catch(error) {
      print(error);
    }
  }

  void _onGuestAddEvent(_GuestAddEvent event, Emitter<GuestState> emit) async {
    try {
      await _repository.post(data: event.newGuest);
      final result = await _repository.getAll();
      emit(GuestState.successful(data: result, sortBy: state.when(loading: () => "firstname", successful: (data, sortBy) => sortBy)));
    } catch(error) {
      print(error);
    }
  }

  void _onGuestUpdateEvent(_GuestUpdateEvent event, Emitter<GuestState> emit) async {
    try {
      await _repository.update(data: event.updateGuest);
      final result = await _repository.getAll();
      emit(GuestState.successful(data: result, sortBy: state.when(loading: () => "firstname", successful: (data, sortBy) => sortBy)));
    } catch(error) {
      print(error);
    }
  }

  void _onGuestRemoveEvent(_GuestRemoveEvent event, Emitter<GuestState> emit) async {
    try {
      await _repository.delete(data: event.deleteGuest);
      final result = await _repository.getAll();
      emit(GuestState.successful(data: result, sortBy: state.when(loading: () => "firstname", successful: (data, sortBy) => sortBy)));
    } catch(error) {
      print(error);
    }
  }

  void _onGuestSortByEvent(_GuestSortByEvent event, Emitter<GuestState> emit) async {
    try {
      state.when(
        loading: () async {
          final result = await _repository.getAll();
          emit(GuestState.successful(data: result, sortBy: "firstname"));
        },
        successful: (data, sortBy) async {
          final List<GuestData> result = List.from(data);
          switch (event.field) {
            case 'firstname' : result.sort((a,b) => a.firstname.compareTo(b.firstname)); break;
            case 'surname' : result.sort((a,b) => a.surname.compareTo(b.surname)); break;
            case 'age' : result.sort((a,b) => a.age.compareTo(b.age)); break;
            default:
          }
          emit(GuestState.successful(data: result, sortBy: event.field));
        },
      );
    } catch(error) {
      print(error);
    }
  }

}