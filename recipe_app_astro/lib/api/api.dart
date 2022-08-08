import 'package:dio/dio.dart';
import 'package:recipe_app_astro/models/response/drink_categories_response.dart';
import 'package:recipe_app_astro/models/response/drink_category_list_response.dart';
import 'package:recipe_app_astro/models/response/drink_details_response.dart';
import 'package:recipe_app_astro/models/response/food_categories_response.dart';
import 'package:recipe_app_astro/models/response/food_category_list_response.dart';
import 'package:recipe_app_astro/models/response/food_details_response.dart';

class Api {
  static Dio getDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }

  static Future<dynamic> getFoodCategories() async {
    Response response = await getDio().post(
      "https://www.themealdb.com/api/json/v1/1/categories.php",
    );

    return FoodCategoriesResponse.fromJson(response.data);
  }

  static Future<dynamic> getFoodCategoryList(String category) async {
    Response response = await getDio().post(
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=$category",
    );

    return FoodCategoryListResponse.fromJson(response.data);
  }

  static Future<dynamic> getDrinkCategories() async {
    Response response = await getDio().post(
      "https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list",
    );

    return DrinkCategoriesResponse.fromJson(response.data);
  }

  static Future<dynamic> getDrinkCategoryList(String category) async {
    Response response = await getDio().post(
      "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=$category",
    );

    return DrinkCategoryListResponse.fromJson(response.data);
  }

  static Future<dynamic> getFoodDetails(String id) async {
    Response response = await getDio().post(
      "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id",
    );

    return FoodDetailsResponse.fromJson(response.data);
  }

  static Future<dynamic> getDrinkDetails(String id) async {
    Response response = await getDio().post(
      "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=$id",
    );

    return DrinkDetailsResponse.fromJson(response.data);
  }
}
