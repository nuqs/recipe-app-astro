// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_details_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DrinkDetailsResponseAdapter extends TypeAdapter<DrinkDetailsResponse> {
  @override
  final int typeId = 2;

  @override
  DrinkDetailsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrinkDetailsResponse()
      ..drinks = (fields[0] as List?)?.cast<DrinkDetails>();
  }

  @override
  void write(BinaryWriter writer, DrinkDetailsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.drinks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkDetailsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkDetailsResponse _$DrinkDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    DrinkDetailsResponse()
      ..drinks = (json['drinks'] as List<dynamic>?)
          ?.map((e) => DrinkDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DrinkDetailsResponseToJson(
    DrinkDetailsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('drinks', instance.drinks);
  return val;
}
