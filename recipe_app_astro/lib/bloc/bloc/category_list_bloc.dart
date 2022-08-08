import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app_astro/models/drink_category_list.dart';
import 'package:recipe_app_astro/models/food_category_list.dart';
import 'package:recipe_app_astro/models/response/drink_category_list_response.dart';
import 'package:recipe_app_astro/models/response/food_category_list_response.dart';
import 'package:recipe_app_astro/repository/home_repository.dart';

part 'category_list_event.dart';
part 'category_list_state.dart';

class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc() : super(CategoryListInitial()) {
    on<GetCategoryList>((event, emit) async {
      try {
        if (event.item == "food") {
          List<FoodCategoryList> categoryList = [];
          emit(CategoryListLoading());
          var response = await HomeRepository().getFoodCategoryList(event.category);
          if (response is FoodCategoryListResponse) {
            categoryList = response.meals ?? [];
            emit(CategoryListFoodLoaded(categoryList));
          }
        } else {
          List<DrinkCategoryList> categoryList = [];
          emit(CategoryListLoading());
          var response = await HomeRepository().getDrinkCategoryList(event.category);
          if (response is DrinkCategoryListResponse) {
            categoryList = response.drinks ?? [];
            emit(CategoryListDrinkLoaded(categoryList));
          }
        }
      } catch (e) {
        emit(const CategoryListError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
