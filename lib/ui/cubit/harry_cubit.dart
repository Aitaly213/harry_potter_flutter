import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:harry_potter/data/model/harry_potter_model.dart';
import 'package:hive/hive.dart';

part 'harry_state.dart';

class HarryCubit extends Cubit<HarryState> {
  HarryCubit() : super(HarryInitial());

  Future<List<HarryPotterModel>> request() async {
    final dio = Dio();
    Response response;
    response =
        await dio.get('https://potterapi-fedeperin.vercel.app/en/characters');
    final harryModel = (response.data as List)
        .map((e) => HarryPotterModel.fromJson(e))
        .toList();
    return harryModel;
  }

  Future<void> getHarryPotterData() async {
    emit(HarryInitial());
    final response = await request();
    emit(HarrySuccess(list: response));
  }

  Future<void> saveCharacter(List<HarryPotterModel> models) async {
    emit(HarryInitial());

    final box = Hive.box<HarryPotterModel>('characters_harry_potter');
    if (box.isEmpty) {
      for (var model in models) {
        box.add(model);
        emit(HarrySuccess(list: box.values.toList()));
      }
    }
  }
}
