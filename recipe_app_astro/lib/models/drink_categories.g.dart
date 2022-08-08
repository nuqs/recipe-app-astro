// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkCategories _$DrinkCategoriesFromJson(Map<String, dynamic> json) =>
    DrinkCategories()..strCategory = json['strCategory'] as String?;

Map<String, dynamic> _$DrinkCategoriesToJson(DrinkCategories instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('strCategory', instance.strCategory);
  return val;
}
