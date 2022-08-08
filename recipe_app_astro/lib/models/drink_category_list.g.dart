// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkCategoryList _$DrinkCategoryListFromJson(Map<String, dynamic> json) =>
    DrinkCategoryList()
      ..strDrink = json['strDrink'] as String?
      ..strDrinkThumb = json['strDrinkThumb'] as String?
      ..idDrink = json['idDrink'] as String?;

Map<String, dynamic> _$DrinkCategoryListToJson(DrinkCategoryList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('strDrink', instance.strDrink);
  writeNotNull('strDrinkThumb', instance.strDrinkThumb);
  writeNotNull('idDrink', instance.idDrink);
  return val;
}
