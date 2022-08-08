// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_category_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkCategoryListResponse _$DrinkCategoryListResponseFromJson(
        Map<String, dynamic> json) =>
    DrinkCategoryListResponse()
      ..drinks = (json['drinks'] as List<dynamic>?)
          ?.map((e) => DrinkCategoryList.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DrinkCategoryListResponseToJson(
    DrinkCategoryListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('drinks', instance.drinks);
  return val;
}
