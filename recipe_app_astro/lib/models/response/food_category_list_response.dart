import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/food_category_list.dart';

part 'food_category_list_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class FoodCategoryListResponse {
  @JsonKey(name: 'meals')
  List<FoodCategoryList>? meals;

  FoodCategoryListResponse();

  factory FoodCategoryListResponse.fromJson(Map<String, dynamic> json) => _$FoodCategoryListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FoodCategoryListResponseToJson(this);
}
