import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:recipe_app_astro/app_component.dart';
import 'package:recipe_app_astro/debug.dart';
import 'package:recipe_app_astro/models/drink_details.dart';
import 'package:recipe_app_astro/models/food_details.dart';
import 'package:recipe_app_astro/models/response/drink_details_response.dart';
import 'package:recipe_app_astro/models/response/food_details_response.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // configure hive and hivebox
  initializeHiveBox();
  await runZoned<Future<void>>(() async {
    runApp(
      const AppComponent(),
    );
  }, onError: (dynamic error, StackTrace stackTrace) async {
    await _reportError(error, stackTrace);
  });
}

Future<void> initializeHiveBox() async {
  // initialize hive
  await Hive.initFlutter();
  // register food details adapter and box
  if (!Hive.isAdapterRegistered(FoodDetailsResponseAdapter().typeId)) {
    Hive
      ..registerAdapter(FoodDetailsResponseAdapter())
      ..registerAdapter(FoodDetailsAdapter());
  }
  if (!Hive.isBoxOpen("FOODDETAILS")) {
    await Hive.openBox("FOODDETAILS");
  }
  // register drink details adapter and box
  if (!Hive.isAdapterRegistered(DrinkDetailsResponseAdapter().typeId)) {
    Hive
      ..registerAdapter(DrinkDetailsResponseAdapter())
      ..registerAdapter(DrinkDetailsAdapter());
  }
  if (!Hive.isBoxOpen("DRINKDETAILS")) {
    await Hive.openBox("DRINKDETAILS");
  }
}

Future<void> _reportError(dynamic error, dynamic stackTrace) async {
  if (isInDebugMode) {
    return;
  }
}
