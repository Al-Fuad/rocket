part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavState {
  final int tabIndex;

  const BottomNavState({required this.tabIndex});
}

final class BottomNavInitial extends BottomNavState {
  const BottomNavInitial({required super.tabIndex});
}


