part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}

final class BottomNavTabChanged extends BottomNavEvent {
  BottomNavTabChanged({required this.tabIndex});

  final int tabIndex;
}