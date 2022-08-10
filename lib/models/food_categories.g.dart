// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategories _$FoodCategoriesFromJson(Map<String, dynamic> json) =>
    FoodCategories()
      ..idCategory = json['idCategory'] as String?
      ..strCategory = json['strCategory'] as String?
      ..strCategoryThumb = json['strCategoryThumb'] as String?
      ..strCategoryDescription = json['strCategoryDescription'] as String?;

Map<String, dynamic> _$FoodCategoriesToJson(FoodCategories instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idCategory', instance.idCategory);
  writeNotNull('strCategory', instance.strCategory);
  writeNotNull('strCategoryThumb', instance.strCategoryThumb);
  writeNotNull('strCategoryDescription', instance.strCategoryDescription);
  return val;
}
