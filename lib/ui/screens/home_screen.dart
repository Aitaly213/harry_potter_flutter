import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/data/model/harry_potter_model.dart';
import 'package:harry_potter/ui/cubit/harry_cubit.dart';
import 'package:harry_potter/ui/screens/saved_characters_screen.dart';
import 'package:harry_potter/ui/widgets/character_item.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = HarryCubit()..getHarryPotterData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Harry Potter Characters"),
        actions: [
          IconButton(
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SavedCharactersScreen(

                          )));

              },
              icon: Icon(Icons.save_outlined))
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder(
                bloc: cubit,
                builder: (context, state) {
                  if (state is HarrySuccess) {
                    final responseList = state.list;
                    HarryCubit().saveCharacter(responseList);
                    return SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          final responseData = responseList[index];
                          return Column(
                            children: [
                              CharacterItem(
                                image: responseData.image,
                                fullName: responseData.fullName,
                                birthDate: responseData.birthdate,
                                hogwartsHouse: responseData.hogwartsHouse,
                                interpretedBy: responseData.interpretedBy,
                              )
                            ],
                          );
                        },
                        itemCount: responseList.length,
                      ),
                    );
                  } else {
                    return Expanded(
                        child: Center(
                      child: CircularProgressIndicator(),
                    ));
                  }
                }),
          ),
        ],
      ),
    );
  }


}
