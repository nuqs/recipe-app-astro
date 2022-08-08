import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drink_details.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: true)
@HiveType(typeId: 3)
class DrinkDetails {
  @JsonKey(name: 'idDrink')
  @HiveField(0)
  String? idDrink;
  @JsonKey(name: 'strDrink')
  @HiveField(1)
  String? strDrink;
  @JsonKey(name: 'strDrinkAlternate')
  @HiveField(2)
  String? strDrinkAlternate;
  @JsonKey(name: 'strTags')
  @HiveField(3)
  String? strTags;
  @JsonKey(name: 'strVideo')
  @HiveField(4)
  String? strVideo;
  @JsonKey(name: 'strCategory')
  @HiveField(5)
  String? strCategory;
  @JsonKey(name: 'strIBA')
  @HiveField(6)
  String? strIBA;
  @JsonKey(name: 'strAlcoholic')
  @HiveField(7)
  String? strAlcoholic;
  @JsonKey(name: 'strGlass')
  @HiveField(8)
  String? strGlass;
  @JsonKey(name: 'strInstructions')
  @HiveField(9)
  String? strInstructions;
  @JsonKey(name: 'strInstructionsES')
  @HiveField(10)
  String? strInstructionsES;
  @JsonKey(name: 'strInstructionsDE')
  @HiveField(11)
  String? strInstructionsDE;
  @JsonKey(name: 'strInstructionsFR')
  @HiveField(12)
  String? strInstructionsFR;
  @JsonKey(name: 'strInstructionsIT')
  @HiveField(13)
  String? strInstructionsIT;
  @JsonKey(name: 'strInstructionsZH-HANS')
  @HiveField(14)
  String? strInstructionsZHHANS;
  @JsonKey(name: 'strInstructionsZH-HANT')
  @HiveField(15)
  String? strInstructionsZHHANT;
  @JsonKey(name: 'strDrinkThumb')
  @HiveField(16)
  String? strDrinkThumb;
  @JsonKey(name: 'strIngredient1')
  @HiveField(17)
  String? strIngredient1;
  @JsonKey(name: 'strIngredient2')
  @HiveField(18)
  String? strIngredient2;
  @JsonKey(name: 'strIngredient3')
  @HiveField(19)
  String? strIngredient3;
  @JsonKey(name: 'strIngredient4')
  @HiveField(20)
  String? strIngredient4;
  @JsonKey(name: 'strIngredient5')
  @HiveField(21)
  String? strIngredient5;
  @JsonKey(name: 'strIngredient6')
  @HiveField(22)
  String? strIngredient6;
  @JsonKey(name: 'strIngredient7')
  @HiveField(23)
  String? strIngredient7;
  @JsonKey(name: 'strIngredient8')
  @HiveField(24)
  String? strIngredient8;
  @JsonKey(name: 'strIngredient9')
  @HiveField(25)
  String? strIngredient9;
  @JsonKey(name: 'strIngredient10')
  @HiveField(26)
  String? strIngredient10;
  @JsonKey(name: 'strIngredient11')
  @HiveField(27)
  String? strIngredient11;
  @JsonKey(name: 'strIngredient12')
  @HiveField(28)
  String? strIngredient12;
  @JsonKey(name: 'strIngredient13')
  @HiveField(29)
  String? strIngredient13;
  @JsonKey(name: 'strIngredient14')
  @HiveField(30)
  String? strIngredient14;
  @JsonKey(name: 'strIngredient15')
  @HiveField(31)
  String? strIngredient15;
  @JsonKey(name: 'strMeasure1')
  @HiveField(32)
  String? strMeasure1;
  @JsonKey(name: 'strMeasure2')
  @HiveField(33)
  String? strMeasure2;
  @JsonKey(name: 'strMeasure3')
  @HiveField(34)
  String? strMeasure3;
  @JsonKey(name: 'strMeasure4')
  @HiveField(35)
  String? strMeasure4;
  @JsonKey(name: 'strMeasure5')
  @HiveField(36)
  String? strMeasure5;
  @JsonKey(name: 'strMeasure6')
  @HiveField(37)
  String? strMeasure6;
  @JsonKey(name: 'strMeasure7')
  @HiveField(38)
  String? strMeasure7;
  @JsonKey(name: 'strMeasure8')
  @HiveField(39)
  String? strMeasure8;
  @JsonKey(name: 'strMeasure9')
  @HiveField(40)
  String? strMeasure9;
  @JsonKey(name: 'strMeasure10')
  @HiveField(41)
  String? strMeasure10;
  @JsonKey(name: 'strMeasure11')
  @HiveField(42)
  String? strMeasure11;
  @JsonKey(name: 'strMeasure12')
  @HiveField(43)
  String? strMeasure12;
  @JsonKey(name: 'strMeasure13')
  @HiveField(44)
  String? strMeasure13;
  @JsonKey(name: 'strMeasure14')
  @HiveField(45)
  String? strMeasure14;
  @JsonKey(name: 'strMeasure15')
  @HiveField(46)
  String? strMeasure15;
  @JsonKey(name: 'strImageSource')
  @HiveField(47)
  String? strImageSource;
  @JsonKey(name: 'strImageAttribution')
  @HiveField(48)
  String? strImageAttribution;
  @JsonKey(name: 'strCreativeCommonsConfirmed')
  @HiveField(49)
  String? strCreativeCommonsConfirmed;
  @JsonKey(name: 'dateModified')
  @HiveField(50)
  String? dateModified;

  DrinkDetails();

  factory DrinkDetails.fromJson(Map<String, dynamic> json) => _$DrinkDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkDetailsToJson(this);
}
