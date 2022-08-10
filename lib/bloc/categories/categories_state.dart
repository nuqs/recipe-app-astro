part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesFoodLoaded extends CategoriesState {
  final List<FoodCategories> categories;
  const CategoriesFoodLoaded(this.categories);
}

class CategoriesDrinkLoaded extends CategoriesState {
  final List<DrinkCategories> categories;
  const CategoriesDrinkLoaded(this.categories);
}

class CategoriesError extends CategoriesState {
  final String? message;
  const CategoriesError(this.message);
}
