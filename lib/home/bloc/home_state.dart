part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class OnLongPressState extends HomeState{
  final bool onLongPress;

  OnLongPressState({required this.onLongPress});

}