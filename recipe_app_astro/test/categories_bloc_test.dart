import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app_astro/bloc/categories/categories_bloc.dart';
import 'package:recipe_app_astro/models/food_categories.dart';

void main() {
  group('Bloc test', () {
    List<FoodCategories> categories = [];

    // Old way of testing Blocs - like regular Streams
    test(
      'OLD WAY emits [WeatherLoading, WeatherLoaded] when successful',
      () {
        // when(mockWeatherRepository.fetchWeather(any))
        //     .thenAnswer((_) async => weather);
        final bloc = CategoriesBloc();
        bloc.add(const GetCategories(item: 'food'));
        expectLater(
          bloc,
          emitsInOrder([
            CategoriesInitial(),
            CategoriesLoading(),
            CategoriesFoodLoaded(categories),
          ]),
        );
      },
    );
  });
}
