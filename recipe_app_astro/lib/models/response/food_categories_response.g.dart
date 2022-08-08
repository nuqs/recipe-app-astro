// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategoriesResponse _$FoodCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    FoodCategoriesResponse()
      ..categories = (json['categories'] as List<dynamic>?)
          ?.map((e) => FoodCategories.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FoodCategoriesResponseToJson(
    FoodCategoriesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categories', instance.categories);
  return val;
}
