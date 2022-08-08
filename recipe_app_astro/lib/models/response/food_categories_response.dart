import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/food_categories.dart';

part 'food_categories_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class FoodCategoriesResponse {
  @JsonKey(name: 'categories')
  List<FoodCategories>? categories;

  FoodCategoriesResponse();

  factory FoodCategoriesResponse.fromJson(Map<String, dynamic> json) => _$FoodCategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FoodCategoriesResponseToJson(this);
}
