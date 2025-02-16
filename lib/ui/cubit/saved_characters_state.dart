part of 'saved_characters_cubit.dart';

sealed class SavedCharactersState extends Equatable {
  const SavedCharactersState();
}

final class SavedCharactersInitial extends SavedCharactersState {
  @override
  List<Object> get props => [];
}

final class SavedCharactersSuccess extends SavedCharactersState {
  List<HarryPotterModel> list;
  SavedCharactersSuccess({required this.list});
  @override
  List<Object> get props => [];
}

final class SavedCharactersFail extends SavedCharactersState {
  String m;
  SavedCharactersFail({required this.m});
  @override
  List<Object> get props => [];
}

