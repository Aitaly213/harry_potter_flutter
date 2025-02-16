  import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../../data/model/harry_potter_model.dart';

part 'saved_characters_state.dart';

class SavedCharactersCubit extends Cubit<SavedCharactersState> {
  SavedCharactersCubit() : super(SavedCharactersInitial());

  Future<List<HarryPotterModel>> getSavedCharacters() async {
    emit(SavedCharactersInitial());
    final box = Hive.box<HarryPotterModel>('characters_harry_potter');
    emit(SavedCharactersSuccess(list: box.values.toList()));
    return box.values.toList();
  }
}
