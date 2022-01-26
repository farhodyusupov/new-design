part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}


 class LongPressEvent extends HomeEvent{
  final bool longPress;


  LongPressEvent({required this.longPress});

}