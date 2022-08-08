import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/drink_category_list.dart';

part 'drink_category_list_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
class DrinkCategoryListResponse {
  @JsonKey(name: 'drinks')
  List<DrinkCategoryList>? drinks;

  DrinkCategoryListResponse();

  factory DrinkCategoryListResponse.fromJson(Map<String, dynamic> json) => _$DrinkCategoryListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkCategoryListResponseToJson(this);
}
