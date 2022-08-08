import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_details.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
@HiveType(typeId: 1)
class FoodDetails {
  @JsonKey(name: 'idMeal')
  @HiveField(0)
  String? idMeal;
  @JsonKey(name: 'strMeal')
  @HiveField(1)
  String? strMeal;
  @JsonKey(name: 'strDrinkAlternate')
  @HiveField(2)
  String? strDrinkAlternate;
  @JsonKey(name: 'strCategory')
  @HiveField(3)
  String? strCategory;
  @JsonKey(name: 'strArea')
  @HiveField(4)
  String? strArea;
  @JsonKey(name: 'strInstructions')
  @HiveField(5)
  String? strInstructions;
  @JsonKey(name: 'strMealThumb')
  @HiveField(6)
  String? strMealThumb;
  @JsonKey(name: 'strTags')
  @HiveField(7)
  String? strTags;
  @JsonKey(name: 'strYoutube')
  @HiveField(8)
  String? strYoutube;
  @JsonKey(name: 'strIngredient1')
  @HiveField(9)
  String? strIngredient1;
  @JsonKey(name: 'strIngredient2')
  @HiveField(10)
  String? strIngredient2;
  @JsonKey(name: 'strIngredient3')
  @HiveField(11)
  String? strIngredient3;
  @JsonKey(name: 'strIngredient4')
  @HiveField(12)
  String? strIngredient4;
  @JsonKey(name: 'strIngredient5')
  @HiveField(13)
  String? strIngredient5;
  @JsonKey(name: 'strIngredient6')
  @HiveField(14)
  String? strIngredient6;
  @JsonKey(name: 'strIngredient7')
  @HiveField(15)
  String? strIngredient7;
  @JsonKey(name: 'strIngredient8')
  @HiveField(16)
  String? strIngredient8;
  @JsonKey(name: 'strIngredient9')
  @HiveField(17)
  String? strIngredient9;
  @JsonKey(name: 'strIngredient10')
  @HiveField(18)
  String? strIngredient10;
  @JsonKey(name: 'strIngredient11')
  @HiveField(19)
  String? strIngredient11;
  @JsonKey(name: 'strIngredient12')
  @HiveField(20)
  String? strIngredient12;
  @JsonKey(name: 'strIngredient13')
  @HiveField(21)
  String? strIngredient13;
  @JsonKey(name: 'strIngredient14')
  @HiveField(22)
  String? strIngredient14;
  @JsonKey(name: 'strIngredient15')
  @HiveField(23)
  String? strIngredient15;
  @JsonKey(name: 'strIngredient16')
  @HiveField(24)
  String? strIngredient16;
  @JsonKey(name: 'strIngredient17')
  @HiveField(25)
  String? strIngredient17;
  @JsonKey(name: 'strIngredient18')
  @HiveField(26)
  String? strIngredient18;
  @JsonKey(name: 'strIngredient19')
  @HiveField(27)
  String? strIngredient19;
  @JsonKey(name: 'strIngredient20')
  @HiveField(28)
  String? strIngredient20;
  @JsonKey(name: 'strMeasure1')
  @HiveField(29)
  String? strMeasure1;
  @JsonKey(name: 'strMeasure2')
  @HiveField(30)
  String? strMeasure2;
  @JsonKey(name: 'strMeasure3')
  @HiveField(31)
  String? strMeasure3;
  @JsonKey(name: 'strMeasure4')
  @HiveField(32)
  String? strMeasure4;
  @JsonKey(name: 'strMeasure5')
  @HiveField(33)
  String? strMeasure5;
  @JsonKey(name: 'strMeasure6')
  @HiveField(34)
  String? strMeasure6;
  @JsonKey(name: 'strMeasure7')
  @HiveField(35)
  String? strMeasure7;
  @JsonKey(name: 'strMeasure8')
  @HiveField(36)
  String? strMeasure8;
  @JsonKey(name: 'strMeasure9')
  @HiveField(37)
  String? strMeasure9;
  @JsonKey(name: 'strMeasure10')
  @HiveField(38)
  String? strMeasure10;
  @JsonKey(name: 'strMeasure11')
  @HiveField(39)
  String? strMeasure11;
  @JsonKey(name: 'strMeasure12')
  @HiveField(40)
  String? strMeasure12;
  @JsonKey(name: 'strMeasure13')
  @HiveField(41)
  String? strMeasure13;
  @JsonKey(name: 'strMeasure14')
  @HiveField(42)
  String? strMeasure14;
  @JsonKey(name: 'strMeasure15')
  @HiveField(43)
  String? strMeasure15;
  @JsonKey(name: 'strMeasure16')
  @HiveField(44)
  String? strMeasure16;
  @JsonKey(name: 'strMeasure17')
  @HiveField(45)
  String? strMeasure17;
  @JsonKey(name: 'strMeasure18')
  @HiveField(46)
  String? strMeasure18;
  @JsonKey(name: 'strMeasure19')
  @HiveField(47)
  String? strMeasure19;
  @JsonKey(name: 'strMeasure20')
  @HiveField(48)
  String? strMeasure20;
  @JsonKey(name: 'strSource')
  @HiveField(49)
  String? strSource;
  @JsonKey(name: 'strImageSource')
  @HiveField(50)
  String? strImageSource;
  @JsonKey(name: 'strCreativeCommonsConfirmed')
  @HiveField(51)
  String? strCreativeCommonsConfirmed;
  @JsonKey(name: 'dateModified')
  @HiveField(52)
  String? dateModified;

  FoodDetails();

  factory FoodDetails.fromJson(Map<String, dynamic> json) => _$FoodDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$FoodDetailsToJson(this);
}
