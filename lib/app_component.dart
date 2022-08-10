import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_astro/bloc/categories/categories_bloc.dart';
import 'package:recipe_app_astro/bloc/category_list/category_list_bloc.dart';
import 'package:recipe_app_astro/bloc/details/detail_bloc.dart';
import 'package:recipe_app_astro/constant/color.dart';
import 'package:recipe_app_astro/constant/route.dart';
import 'package:recipe_app_astro/debug.dart';
import 'package:recipe_app_astro/views/home/home_drink.dart';
import 'package:recipe_app_astro/views/home/home_food.dart';
import 'package:recipe_app_astro/views/main_menu.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({Key? key}) : super(key: key);

  static restartApp(BuildContext context) {
    _AppComponentState? state = context.findAncestorStateOfType<_AppComponentState>();
    state?.restart();
  }

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  @override
  void initState() {
    super.initState();
  }

  void restart() {}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    if (!isInDebugMode) {
      ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
        return Material(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Oops!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Something went wrong.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      };
    }

    return getMainUi();
  }

  Widget getMainUi() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoriesBloc>(
          create: (BuildContext context) => CategoriesBloc(),
        ),
        BlocProvider<CategoryListBloc>(
          create: (BuildContext context) => CategoryListBloc(),
        ),
        BlocProvider<DetailBloc>(
          create: (BuildContext context) => DetailBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Recipe',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generator,
        theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ThemeData().colorScheme.copyWith(primary: kPrimaryColor),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: kPrimaryColor,
            toolbarTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) {
            return Container();
          });
        },
      ),
    );
  }

  Route<dynamic> generator(RouteSettings settings) {
    if (settings.name == Routes.root) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const MainMenuPage(),
      );
    }

    if (settings.name == Routes.foodHome) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HomeFood(item: "food"),
      );
    }

    if (settings.name == Routes.drinkHome) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HomeDrink(item: "drink"),
      );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (_) => Container(
        color: Colors.white,
      ),
    );
  }
}
