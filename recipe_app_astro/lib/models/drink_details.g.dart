// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DrinkDetailsAdapter extends TypeAdapter<DrinkDetails> {
  @override
  final int typeId = 3;

  @override
  DrinkDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrinkDetails()
      ..idDrink = fields[0] as String?
      ..strDrink = fields[1] as String?
      ..strDrinkAlternate = fields[2] as String?
      ..strTags = fields[3] as String?
      ..strVideo = fields[4] as String?
      ..strCategory = fields[5] as String?
      ..strIBA = fields[6] as String?
      ..strAlcoholic = fields[7] as String?
      ..strGlass = fields[8] as String?
      ..strInstructions = fields[9] as String?
      ..strInstructionsES = fields[10] as String?
      ..strInstructionsDE = fields[11] as String?
      ..strInstructionsFR = fields[12] as String?
      ..strInstructionsIT = fields[13] as String?
      ..strInstructionsZHHANS = fields[14] as String?
      ..strInstructionsZHHANT = fields[15] as String?
      ..strDrinkThumb = fields[16] as String?
      ..strIngredient1 = fields[17] as String?
      ..strIngredient2 = fields[18] as String?
      ..strIngredient3 = fields[19] as String?
      ..strIngredient4 = fields[20] as String?
      ..strIngredient5 = fields[21] as String?
      ..strIngredient6 = fields[22] as String?
      ..strIngredient7 = fields[23] as String?
      ..strIngredient8 = fields[24] as String?
      ..strIngredient9 = fields[25] as String?
      ..strIngredient10 = fields[26] as String?
      ..strIngredient11 = fields[27] as String?
      ..strIngredient12 = fields[28] as String?
      ..strIngredient13 = fields[29] as String?
      ..strIngredient14 = fields[30] as String?
      ..strIngredient15 = fields[31] as String?
      ..strMeasure1 = fields[32] as String?
      ..strMeasure2 = fields[33] as String?
      ..strMeasure3 = fields[34] as String?
      ..strMeasure4 = fields[35] as String?
      ..strMeasure5 = fields[36] as String?
      ..strMeasure6 = fields[37] as String?
      ..strMeasure7 = fields[38] as String?
      ..strMeasure8 = fields[39] as String?
      ..strMeasure9 = fields[40] as String?
      ..strMeasure10 = fields[41] as String?
      ..strMeasure11 = fields[42] as String?
      ..strMeasure12 = fields[43] as String?
      ..strMeasure13 = fields[44] as String?
      ..strMeasure14 = fields[45] as String?
      ..strMeasure15 = fields[46] as String?
      ..strImageSource = fields[47] as String?
      ..strImageAttribution = fields[48] as String?
      ..strCreativeCommonsConfirmed = fields[49] as String?
      ..dateModified = fields[50] as String?;
  }

  @override
  void write(BinaryWriter writer, DrinkDetails obj) {
    writer
      ..writeByte(51)
      ..writeByte(0)
      ..write(obj.idDrink)
      ..writeByte(1)
      ..write(obj.strDrink)
      ..writeByte(2)
      ..write(obj.strDrinkAlternate)
      ..writeByte(3)
      ..write(obj.strTags)
      ..writeByte(4)
      ..write(obj.strVideo)
      ..writeByte(5)
      ..write(obj.strCategory)
      ..writeByte(6)
      ..write(obj.strIBA)
      ..writeByte(7)
      ..write(obj.strAlcoholic)
      ..writeByte(8)
      ..write(obj.strGlass)
      ..writeByte(9)
      ..write(obj.strInstructions)
      ..writeByte(10)
      ..write(obj.strInstructionsES)
      ..writeByte(11)
      ..write(obj.strInstructionsDE)
      ..writeByte(12)
      ..write(obj.strInstructionsFR)
      ..writeByte(13)
      ..write(obj.strInstructionsIT)
      ..writeByte(14)
      ..write(obj.strInstructionsZHHANS)
      ..writeByte(15)
      ..write(obj.strInstructionsZHHANT)
      ..writeByte(16)
      ..write(obj.strDrinkThumb)
      ..writeByte(17)
      ..write(obj.strIngredient1)
      ..writeByte(18)
      ..write(obj.strIngredient2)
      ..writeByte(19)
      ..write(obj.strIngredient3)
      ..writeByte(20)
      ..write(obj.strIngredient4)
      ..writeByte(21)
      ..write(obj.strIngredient5)
      ..writeByte(22)
      ..write(obj.strIngredient6)
      ..writeByte(23)
      ..write(obj.strIngredient7)
      ..writeByte(24)
      ..write(obj.strIngredient8)
      ..writeByte(25)
      ..write(obj.strIngredient9)
      ..writeByte(26)
      ..write(obj.strIngredient10)
      ..writeByte(27)
      ..write(obj.strIngredient11)
      ..writeByte(28)
      ..write(obj.strIngredient12)
      ..writeByte(29)
      ..write(obj.strIngredient13)
      ..writeByte(30)
      ..write(obj.strIngredient14)
      ..writeByte(31)
      ..write(obj.strIngredient15)
      ..writeByte(32)
      ..write(obj.strMeasure1)
      ..writeByte(33)
      ..write(obj.strMeasure2)
      ..writeByte(34)
      ..write(obj.strMeasure3)
      ..writeByte(35)
      ..write(obj.strMeasure4)
      ..writeByte(36)
      ..write(obj.strMeasure5)
      ..writeByte(37)
      ..write(obj.strMeasure6)
      ..writeByte(38)
      ..write(obj.strMeasure7)
      ..writeByte(39)
      ..write(obj.strMeasure8)
      ..writeByte(40)
      ..write(obj.strMeasure9)
      ..writeByte(41)
      ..write(obj.strMeasure10)
      ..writeByte(42)
      ..write(obj.strMeasure11)
      ..writeByte(43)
      ..write(obj.strMeasure12)
      ..writeByte(44)
      ..write(obj.strMeasure13)
      ..writeByte(45)
      ..write(obj.strMeasure14)
      ..writeByte(46)
      ..write(obj.strMeasure15)
      ..writeByte(47)
      ..write(obj.strImageSource)
      ..writeByte(48)
      ..write(obj.strImageAttribution)
      ..writeByte(49)
      ..write(obj.strCreativeCommonsConfirmed)
      ..writeByte(50)
      ..write(obj.dateModified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkDetails _$DrinkDetailsFromJson(Map<String, dynamic> json) => DrinkDetails()
  ..idDrink = json['idDrink'] as String?
  ..strDrink = json['strDrink'] as String?
  ..strDrinkAlternate = json['strDrinkAlternate'] as String?
  ..strTags = json['strTags'] as String?
  ..strVideo = json['strVideo'] as String?
  ..strCategory = json['strCategory'] as String?
  ..strIBA = json['strIBA'] as String?
  ..strAlcoholic = json['strAlcoholic'] as String?
  ..strGlass = json['strGlass'] as String?
  ..strInstructions = json['strInstructions'] as String?
  ..strInstructionsES = json['strInstructionsES'] as String?
  ..strInstructionsDE = json['strInstructionsDE'] as String?
  ..strInstructionsFR = json['strInstructionsFR'] as String?
  ..strInstructionsIT = json['strInstructionsIT'] as String?
  ..strInstructionsZHHANS = json['strInstructionsZH-HANS'] as String?
  ..strInstructionsZHHANT = json['strInstructionsZH-HANT'] as String?
  ..strDrinkThumb = json['strDrinkThumb'] as String?
  ..strIngredient1 = json['strIngredient1'] as String?
  ..strIngredient2 = json['strIngredient2'] as String?
  ..strIngredient3 = json['strIngredient3'] as String?
  ..strIngredient4 = json['strIngredient4'] as String?
  ..strIngredient5 = json['strIngredient5'] as String?
  ..strIngredient6 = json['strIngredient6'] as String?
  ..strIngredient7 = json['strIngredient7'] as String?
  ..strIngredient8 = json['strIngredient8'] as String?
  ..strIngredient9 = json['strIngredient9'] as String?
  ..strIngredient10 = json['strIngredient10'] as String?
  ..strIngredient11 = json['strIngredient11'] as String?
  ..strIngredient12 = json['strIngredient12'] as String?
  ..strIngredient13 = json['strIngredient13'] as String?
  ..strIngredient14 = json['strIngredient14'] as String?
  ..strIngredient15 = json['strIngredient15'] as String?
  ..strMeasure1 = json['strMeasure1'] as String?
  ..strMeasure2 = json['strMeasure2'] as String?
  ..strMeasure3 = json['strMeasure3'] as String?
  ..strMeasure4 = json['strMeasure4'] as String?
  ..strMeasure5 = json['strMeasure5'] as String?
  ..strMeasure6 = json['strMeasure6'] as String?
  ..strMeasure7 = json['strMeasure7'] as String?
  ..strMeasure8 = json['strMeasure8'] as String?
  ..strMeasure9 = json['strMeasure9'] as String?
  ..strMeasure10 = json['strMeasure10'] as String?
  ..strMeasure11 = json['strMeasure11'] as String?
  ..strMeasure12 = json['strMeasure12'] as String?
  ..strMeasure13 = json['strMeasure13'] as String?
  ..strMeasure14 = json['strMeasure14'] as String?
  ..strMeasure15 = json['strMeasure15'] as String?
  ..strImageSource = json['strImageSource'] as String?
  ..strImageAttribution = json['strImageAttribution'] as String?
  ..strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'] as String?
  ..dateModified = json['dateModified'] as String?;

Map<String, dynamic> _$DrinkDetailsToJson(DrinkDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idDrink', instance.idDrink);
  writeNotNull('strDrink', instance.strDrink);
  writeNotNull('strDrinkAlternate', instance.strDrinkAlternate);
  writeNotNull('strTags', instance.strTags);
  writeNotNull('strVideo', instance.strVideo);
  writeNotNull('strCategory', instance.strCategory);
  writeNotNull('strIBA', instance.strIBA);
  writeNotNull('strAlcoholic', instance.strAlcoholic);
  writeNotNull('strGlass', instance.strGlass);
  writeNotNull('strInstructions', instance.strInstructions);
  writeNotNull('strInstructionsES', instance.strInstructionsES);
  writeNotNull('strInstructionsDE', instance.strInstructionsDE);
  writeNotNull('strInstructionsFR', instance.strInstructionsFR);
  writeNotNull('strInstructionsIT', instance.strInstructionsIT);
  writeNotNull('strInstructionsZH-HANS', instance.strInstructionsZHHANS);
  writeNotNull('strInstructionsZH-HANT', instance.strInstructionsZHHANT);
  writeNotNull('strDrinkThumb', instance.strDrinkThumb);
  writeNotNull('strIngredient1', instance.strIngredient1);
  writeNotNull('strIngredient2', instance.strIngredient2);
  writeNotNull('strIngredient3', instance.strIngredient3);
  writeNotNull('strIngredient4', instance.strIngredient4);
  writeNotNull('strIngredient5', instance.strIngredient5);
  writeNotNull('strIngredient6', instance.strIngredient6);
  writeNotNull('strIngredient7', instance.strIngredient7);
  writeNotNull('strIngredient8', instance.strIngredient8);
  writeNotNull('strIngredient9', instance.strIngredient9);
  writeNotNull('strIngredient10', instance.strIngredient10);
  writeNotNull('strIngredient11', instance.strIngredient11);
  writeNotNull('strIngredient12', instance.strIngredient12);
  writeNotNull('strIngredient13', instance.strIngredient13);
  writeNotNull('strIngredient14', instance.strIngredient14);
  writeNotNull('strIngredient15', instance.strIngredient15);
  writeNotNull('strMeasure1', instance.strMeasure1);
  writeNotNull('strMeasure2', instance.strMeasure2);
  writeNotNull('strMeasure3', instance.strMeasure3);
  writeNotNull('strMeasure4', instance.strMeasure4);
  writeNotNull('strMeasure5', instance.strMeasure5);
  writeNotNull('strMeasure6', instance.strMeasure6);
  writeNotNull('strMeasure7', instance.strMeasure7);
  writeNotNull('strMeasure8', instance.strMeasure8);
  writeNotNull('strMeasure9', instance.strMeasure9);
  writeNotNull('strMeasure10', instance.strMeasure10);
  writeNotNull('strMeasure11', instance.strMeasure11);
  writeNotNull('strMeasure12', instance.strMeasure12);
  writeNotNull('strMeasure13', instance.strMeasure13);
  writeNotNull('strMeasure14', instance.strMeasure14);
  writeNotNull('strMeasure15', instance.strMeasure15);
  writeNotNull('strImageSource', instance.strImageSource);
  writeNotNull('strImageAttribution', instance.strImageAttribution);
  writeNotNull(
      'strCreativeCommonsConfirmed', instance.strCreativeCommonsConfirmed);
  writeNotNull('dateModified', instance.dateModified);
  return val;
}
