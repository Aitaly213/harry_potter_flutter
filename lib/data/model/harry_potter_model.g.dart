// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harry_potter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HarryPotterModelImplAdapter extends TypeAdapter<_$HarryPotterModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$HarryPotterModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$HarryPotterModelImpl(
      fullName: fields[0] as String,
      nickname: fields[1] as String,
      hogwartsHouse: fields[2] as String,
      interpretedBy: fields[3] as String,
      children: (fields[4] as List).cast<String>(),
      image: fields[5] as String,
      birthdate: fields[6] as String,
      index: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$HarryPotterModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.fullName)
      ..writeByte(1)
      ..write(obj.nickname)
      ..writeByte(2)
      ..write(obj.hogwartsHouse)
      ..writeByte(3)
      ..write(obj.interpretedBy)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.birthdate)
      ..writeByte(7)
      ..write(obj.index)
      ..writeByte(4)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HarryPotterModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HarryPotterModelImpl _$$HarryPotterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HarryPotterModelImpl(
      fullName: json['fullName'] as String,
      nickname: json['nickname'] as String,
      hogwartsHouse: json['hogwartsHouse'] as String,
      interpretedBy: json['interpretedBy'] as String,
      children:
          (json['children'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String,
      birthdate: json['birthdate'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$HarryPotterModelImplToJson(
        _$HarryPotterModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nickname': instance.nickname,
      'hogwartsHouse': instance.hogwartsHouse,
      'interpretedBy': instance.interpretedBy,
      'children': instance.children,
      'image': instance.image,
      'birthdate': instance.birthdate,
      'index': instance.index,
    };
