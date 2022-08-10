import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/drink_categories.dart';

part 'drink_categories_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class DrinkCategoriesResponse {
  @JsonKey(name: 'drinks')
  List<DrinkCategories>? drinks;

  DrinkCategoriesResponse();

  factory DrinkCategoriesResponse.fromJson(Map<String, dynamic> json) => _$DrinkCategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkCategoriesResponseToJson(this);
}
