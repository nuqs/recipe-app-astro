import 'package:json_annotation/json_annotation.dart';

part 'food_category_list.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class FoodCategoryList {
  @JsonKey(name: 'strMeal')
  String? strMeal;
  @JsonKey(name: 'strMealThumb')
  String? strMealThumb;
  @JsonKey(name: 'idMeal')
  String? idMeal;

  FoodCategoryList();

  factory FoodCategoryList.fromJson(Map<String, dynamic> json) => _$FoodCategoryListFromJson(json);

  Map<String, dynamic> toJson() => _$FoodCategoryListToJson(this);
}
