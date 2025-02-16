import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'harry_potter_model.freezed.dart';
part 'harry_potter_model.g.dart';

@freezed
class HarryPotterModel with _$HarryPotterModel {

  @HiveType(typeId: 0)
  factory HarryPotterModel(
      {
        @HiveField(0) required String fullName,
        @HiveField(1) required String nickname,
        @HiveField(2) required String hogwartsHouse,
        @HiveField(3) required String interpretedBy,
        @HiveField(4) required List<String> children,
        @HiveField(5) required String image,
        @HiveField(6) required String birthdate,
        @HiveField(7) required int index}) = _HarryPotterModel;

  factory HarryPotterModel.fromJson(Map<String, dynamic> json) => _$HarryPotterModelFromJson(json);
}
