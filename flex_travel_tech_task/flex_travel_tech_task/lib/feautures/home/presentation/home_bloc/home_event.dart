part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ChangeUsedGBEvent extends HomeEvent {
  final double usedGB;

  ChangeUsedGBEvent({required this.usedGB});
}
