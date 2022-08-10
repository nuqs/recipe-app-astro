import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app_astro/bloc/categories/categories_bloc.dart';
import 'package:recipe_app_astro/bloc/category_list/category_list_bloc.dart';
import 'package:recipe_app_astro/views/home/home_drink.dart';
import 'package:recipe_app_astro/views/home/home_food.dart';
import 'package:recipe_app_astro/views/main_menu.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('Navigation tests', () {
    final mockObserver = MockNavigatorObserver();
    Future<void> _buildMainPage(WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const MainMenuPage(),
        navigatorObservers: [mockObserver],
      ));
    }

    Future<void> _buildFoodHomePage(WidgetTester tester) async {
      final CategoriesBloc _categoriesBloc = CategoriesBloc();
      final CategoryListBloc _categoryListBloc = CategoryListBloc();
      await tester.pumpWidget(
        const MaterialApp(
          home: HomeFood(
            item: "food",
            // child:Scaffold(
            //   body: BlocProvider(
            //     create: (_) => _categoriesBloc,
            //     child: BlocListener<CategoriesBloc, CategoriesState>(
            //       listener: (context, state) {},
            //       child: BlocBuilder<CategoriesBloc, CategoriesState>(builder: (context, state) {
            //         if (state is CategoriesFoodLoaded) {
            //           return SingleChildScrollView(
            //             child: Column(
            //               children: [
            //                 BlocProvider(
            //                   create: (_) => _categoryListBloc..add(const GetCategoryList(item: "food", category: "Beef")),
            //                   child: BlocListener<CategoriesBloc, CategoriesState>(
            //                     listener: (context, state) {
            //                       if (state is CategoriesError) {
            //                         ScaffoldMessenger.of(context).showSnackBar(
            //                           SnackBar(
            //                             content: Text(state.message!),
            //                           ),
            //                         );
            //                       }
            //                     },
            //                     child: BlocBuilder<CategoriesBloc, CategoriesState>(
            //                       builder: (context, state) {
            //                         if (state is CategoriesFoodLoaded) {
            //                           return const SingleChildScrollView();
            //                         }
            //                         return Container();
            //                       },
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           );
            //         }
            //         return Container();
            //       }),
            //     ),
            //   ),
            // ),
          ),
        ),
      );
    }

    Future<void> _buildDrinkHomePage(WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomeFood(item: "drink"),
        navigatorObservers: [mockObserver],
      ));
    }

    Future<void> _navigateToFoodHomePage(WidgetTester tester) async {
      await tester.tap(find.byKey(const ValueKey("foodNavigator")));
      await tester.pumpAndSettle();
    }

    Future<void> _navigateToDrinkHomePage(WidgetTester tester) async {
      await tester.tap(find.byKey(const ValueKey("drinkNavigator")));
      await tester.pumpAndSettle();
    }

    Future<void> _navigateToFoodDetailPage(WidgetTester tester) async {
      await tester.tap(find.byKey(const ValueKey("foodDetailNavigator")));
      await tester.pumpAndSettle();
    }

    Future<void> _navigateToDrinkDetailPage(WidgetTester tester) async {
      await tester.tap(find.byKey(const ValueKey("drinkDetailNavigator")));
      await tester.pumpAndSettle();
    }

    testWidgets('Navigate to food homepage', (WidgetTester tester) async {
      await _buildMainPage(tester);
      await _navigateToFoodHomePage(tester);

      expect(find.byType(HomeFood), findsOneWidget);
    });

    testWidgets('Navigate to drink homepage', (WidgetTester tester) async {
      await _buildMainPage(tester);
      await _navigateToDrinkHomePage(tester);

      expect(find.byType(HomeDrink), findsOneWidget);
    });
    // testWidgets('Navigate to food detail page', (WidgetTester tester) async {
    //   await _buildFoodHomePage(tester);
    //   await _navigateToFoodDetailPage(tester);

    //   expect(find.byType(DetailFood), findsOneWidget);
    // });
    // testWidgets('Navigate to drink detailpage', (WidgetTester tester) async {
    //   await _buildDrinkHomePage(tester);
    //   await _navigateToDrinkDetailPage(tester);

    //   expect(find.byType(DetailDrink), findsOneWidget);
    // });
  });
}
