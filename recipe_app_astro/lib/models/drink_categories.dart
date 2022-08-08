import 'package:json_annotation/json_annotation.dart';

part 'drink_categories.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class DrinkCategories {
  @JsonKey(name: 'strCategory')
  String? strCategory;

  DrinkCategories();

  factory DrinkCategories.fromJson(Map<String, dynamic> json) => _$DrinkCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkCategoriesToJson(this);
}
