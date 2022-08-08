// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategoryListResponse _$FoodCategoryListResponseFromJson(
        Map<String, dynamic> json) =>
    FoodCategoryListResponse()
      ..meals = (json['meals'] as List<dynamic>?)
          ?.map((e) => FoodCategoryList.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FoodCategoryListResponseToJson(
    FoodCategoryListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meals', instance.meals);
  return val;
}
