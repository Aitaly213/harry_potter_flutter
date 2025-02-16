import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/ui/cubit/saved_characters_cubit.dart';

import '../widgets/character_item.dart';

class SavedCharactersScreen extends StatelessWidget {
  //List<HarryPotterModel> savedCharacters;

  SavedCharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<HarryPotterModel> savedCharacters = getSavedCharacters();

    final cubit = SavedCharactersCubit()..getSavedCharacters();

    return Scaffold(
      appBar: AppBar(title: Text("Saved Characters")),
      body: BlocBuilder<SavedCharactersCubit, SavedCharactersState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is SavedCharactersSuccess) {
              final savedCharacters = state.list;

              return Container(
                color: Colors.white,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final responseData = savedCharacters[index];
                    return CharacterItem(
                      image: responseData.image,
                      fullName: responseData.fullName,
                      birthDate: responseData.birthdate,
                      hogwartsHouse: responseData.hogwartsHouse,
                      interpretedBy: responseData.interpretedBy,
                    );
                  },
                  itemCount: savedCharacters.length,
                ),
              );
            } else {
              return Expanded(
                  child: Center(child: CircularProgressIndicator()));
            }
          }),
    );
  }
}
