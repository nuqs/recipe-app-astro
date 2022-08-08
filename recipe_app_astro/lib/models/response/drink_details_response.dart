import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:recipe_app_astro/models/drink_details.dart';

part 'drink_details_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
@HiveType(typeId: 2)
class DrinkDetailsResponse {
  @JsonKey(name: 'drinks')
  @HiveField(0)
  List<DrinkDetails>? drinks;

  DrinkDetailsResponse();

  factory DrinkDetailsResponse.fromJson(Map<String, dynamic> json) => _$DrinkDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkDetailsResponseToJson(this);
}
