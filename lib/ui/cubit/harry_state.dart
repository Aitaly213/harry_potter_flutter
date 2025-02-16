part of 'harry_cubit.dart';

sealed class HarryState extends Equatable {
  const HarryState();
}

final class HarryInitial extends HarryState {
  @override
  List<Object> get props => [];
}

final class HarrySuccess extends HarryState {
  List<HarryPotterModel> list;
  HarrySuccess({required this.list});
  @override
  List<Object> get props => [];
}

final class HarryFail extends HarryState {
  String m;
  HarryFail({required this.m});
  @override
  List<Object> get props => [];
}
