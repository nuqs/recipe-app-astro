// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkCategoriesResponse _$DrinkCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    DrinkCategoriesResponse()
      ..drinks = (json['drinks'] as List<dynamic>?)
          ?.map((e) => DrinkCategories.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DrinkCategoriesResponseToJson(
    DrinkCategoriesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('drinks', instance.drinks);
  return val;
}
