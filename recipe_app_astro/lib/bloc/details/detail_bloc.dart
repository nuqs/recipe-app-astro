import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:recipe_app_astro/models/drink_details.dart';
import 'package:recipe_app_astro/models/food_details.dart';
import 'package:recipe_app_astro/models/response/drink_details_response.dart';
import 'package:recipe_app_astro/models/response/food_details_response.dart';
import 'package:recipe_app_astro/repository/home_repository.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial()) {
    on<GetDetail>((event, emit) async {
      print("bloc");
      try {
        // need to make differenct function because datatype is not the same
        // food detail
        if (event.item == "food") {
          List<FoodDetails> detail = [];
          emit(DetailLoading());
          // check for cache data
          final List<FoodDetails> detailCache = await Hive.box("FOODDETAILS").get(event.id, defaultValue: []);
          print("luar");
          // if exist, just use the cache data
          if (detailCache.isNotEmpty) {
            print("cache food data");
            detail = detailCache;
            emit(DetailFoodLoaded(detail));
          } else {
            //if not, fetch new data
            var response = await HomeRepository().getFoodDetails(event.id);
            if (response is FoodDetailsResponse) {
              detail = response.meals ?? [];
              Hive.box("FOODDETAILS").put(event.id, detail);
              print("save as food cache");
              emit(DetailFoodLoaded(detail));
            }
          }
          // var response = await HomeRepository().getFoodDetails(event.id);
          // if (response is FoodDetailsResponse) {
          //   detail = response.meals ?? [];
          //   Hive.box("FOODDETAILS").put(event.id, detail);
          //   print("save as food cache");
          //   emit(DetailFoodLoaded(detail));
          // }
        } else {
          // drink detail
          List<DrinkDetails> detail = [];
          emit(DetailLoading());
          // check for cache data
          final List<DrinkDetails> detailCache = await Hive.box("DRINKDETAILS").get(event.id, defaultValue: []);
          // if exist, just use the cache data
          if (detailCache.isNotEmpty) {
            detail = detailCache;
            emit(DetailDrinkLoaded(detail));
          }
          //if not, fetch new data
          var response = await HomeRepository().getDrinkDetails(event.id);
          if (response is DrinkDetailsResponse) {
            detail = response.drinks ?? [];
            Hive.box("DRINKDETAILS").put(event.id, detail);
            emit(DetailDrinkLoaded(detail));
          }
        }
      } on Exception {
        emit(const DetailError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
