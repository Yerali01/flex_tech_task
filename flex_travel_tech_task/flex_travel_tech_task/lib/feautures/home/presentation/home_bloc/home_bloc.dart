import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState(
            totalGB: 10,
            usedGB: 3.5,
          ),
        ) {
    on<ChangeUsedGBEvent>(_changeUsedGBEvent);
  }

  Future<void> _changeUsedGBEvent(
    final ChangeUsedGBEvent event,
    final Emitter<HomeState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          usedGB: event.usedGB,
        ),
      );
    } on Exception catch (e) {
      log('Ошибка!!! _changeUsedGBEvent = $e');
    }
  }
}
