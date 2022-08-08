import 'package:json_annotation/json_annotation.dart';

part 'food_categories.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class FoodCategories {
  @JsonKey(name: 'idCategory')
  String? idCategory;
  @JsonKey(name: 'strCategory')
  String? strCategory;
  @JsonKey(name: 'strCategoryThumb')
  String? strCategoryThumb;
  @JsonKey(name: 'strCategoryDescription')
  String? strCategoryDescription;

  FoodCategories();

  factory FoodCategories.fromJson(Map<String, dynamic> json) => _$FoodCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$FoodCategoriesToJson(this);
}
