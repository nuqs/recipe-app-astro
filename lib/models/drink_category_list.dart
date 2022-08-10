import 'package:json_annotation/json_annotation.dart';

part 'drink_category_list.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class DrinkCategoryList {
  @JsonKey(name: 'strDrink')
  String? strDrink;
  @JsonKey(name: 'strDrinkThumb')
  String? strDrinkThumb;
  @JsonKey(name: 'idDrink')
  String? idDrink;

  DrinkCategoryList();

  factory DrinkCategoryList.fromJson(Map<String, dynamic> json) => _$DrinkCategoryListFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkCategoryListToJson(this);
}
