part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(10) double totalGB,
    @Default(3.5) double usedGB,
  }) = _HomeState;

  const HomeState._();

  @override
  // TODO: implement totalGigaB
  double get totalGB => totalGB;

  @override
  // TODO: implement usedGigaB
  double get usedGB => usedGB;
}
