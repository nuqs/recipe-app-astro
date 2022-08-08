import 'package:recipe_app_astro/api/api.dart';

abstract class BaseHomeRepository {
  Future<dynamic> getFoodCategories();
  Future<dynamic> getFoodCategoryList(String category);
  Future<dynamic> getDrinkCategories();
  Future<dynamic> getDrinkCategoryList(String category);
  Future<dynamic> getFoodDetails(String id);
  Future<dynamic> getDrinkDetails(String id);
}

class HomeRepository extends BaseHomeRepository {
  HomeRepository();

  @override
  Future<dynamic> getFoodCategories() async {
    return await Api.getFoodCategories();
  }

  @override
  Future<dynamic> getFoodCategoryList(String category) async {
    return await Api.getFoodCategoryList(category);
  }

  @override
  Future<dynamic> getDrinkCategories() async {
    return await Api.getDrinkCategories();
  }

  @override
  Future<dynamic> getDrinkCategoryList(String category) async {
    return await Api.getDrinkCategoryList(category);
  }

  @override
  Future<dynamic> getFoodDetails(String id) async {
    // FoodDetailsResponse detailCache = await Hive.box("FOODDETAILS").get(id, defaultValue: []);
    // print("repo");
    // if (detailCache.toJson().isNotEmpty) {
    //   print("cache food data");
    //   return detailCache;
    // }
    return await Api.getFoodDetails(id);
  }

  @override
  Future<dynamic> getDrinkDetails(String id) async {
    return await Api.getDrinkDetails(id);
  }
}
