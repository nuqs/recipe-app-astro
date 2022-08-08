// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_details_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodDetailsResponseAdapter extends TypeAdapter<FoodDetailsResponse> {
  @override
  final int typeId = 0;

  @override
  FoodDetailsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FoodDetailsResponse()
      ..meals = (fields[0] as List?)?.cast<FoodDetails>();
  }

  @override
  void write(BinaryWriter writer, FoodDetailsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.meals);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodDetailsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodDetailsResponse _$FoodDetailsResponseFromJson(Map<String, dynamic> json) =>
    FoodDetailsResponse()
      ..meals = (json['meals'] as List<dynamic>?)
          ?.map((e) => FoodDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FoodDetailsResponseToJson(FoodDetailsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meals', instance.meals);
  return val;
}
