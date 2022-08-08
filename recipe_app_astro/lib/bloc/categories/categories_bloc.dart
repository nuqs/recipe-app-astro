import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app_astro/models/drink_categories.dart';
import 'package:recipe_app_astro/models/food_categories.dart';
import 'package:recipe_app_astro/models/response/drink_categories_response.dart';
import 'package:recipe_app_astro/models/response/food_categories_response.dart';
import 'package:recipe_app_astro/repository/home_repository.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<GetCategories>((event, emit) async {
      try {
        if (event.item == "food") {
          List<FoodCategories> categories = [];
          emit(CategoriesLoading());
          var response = await HomeRepository().getFoodCategories();
          if (response is FoodCategoriesResponse) {
            categories = response.categories ?? [];
            emit(CategoriesFoodLoaded(categories));
          }
        } else {
          List<DrinkCategories> categories = [];
          emit(CategoriesLoading());
          var response = await HomeRepository().getDrinkCategories();
          if (response is DrinkCategoriesResponse) {
            categories = response.drinks ?? [];
            emit(CategoriesDrinkLoaded(categories));
          }
        }
      } catch (e) {
        emit(const CategoriesError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
