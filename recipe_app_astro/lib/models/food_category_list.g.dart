// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategoryList _$FoodCategoryListFromJson(Map<String, dynamic> json) =>
    FoodCategoryList()
      ..strMeal = json['strMeal'] as String?
      ..strMealThumb = json['strMealThumb'] as String?
      ..idMeal = json['idMeal'] as String?;

Map<String, dynamic> _$FoodCategoryListToJson(FoodCategoryList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('strMeal', instance.strMeal);
  writeNotNull('strMealThumb', instance.strMealThumb);
  writeNotNull('idMeal', instance.idMeal);
  return val;
}
