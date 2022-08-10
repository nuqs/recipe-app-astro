import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/food_details.dart';

part 'food_details_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
@HiveType(typeId: 0)
class FoodDetailsResponse {
  @JsonKey(name: 'meals')
  @HiveField(0)
  List<FoodDetails>? meals;

  FoodDetailsResponse();

  factory FoodDetailsResponse.fromJson(Map<String, dynamic> json) => _$FoodDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FoodDetailsResponseToJson(this);
}
