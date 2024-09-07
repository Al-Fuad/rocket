import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavInitial(tabIndex: 0)) {
    on<BottomNavTabChanged>(_bottomNavTabChanged);
  }
  FutureOr<void> _bottomNavTabChanged(
      BottomNavTabChanged event, Emitter<BottomNavState> emit) {
        emit(BottomNavInitial(tabIndex: event.tabIndex));
      }
}
