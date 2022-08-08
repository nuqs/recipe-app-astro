part of 'category_list_bloc.dart';

abstract class CategoryListState extends Equatable {
  const CategoryListState();

  @override
  List<Object> get props => [];
}

class CategoryListInitial extends CategoryListState {}

class CategoryListLoading extends CategoryListState {}

class CategoryListFoodLoaded extends CategoryListState {
  final List<FoodCategoryList> categoryList;
  const CategoryListFoodLoaded(this.categoryList);
}

class CategoryListDrinkLoaded extends CategoryListState {
  final List<DrinkCategoryList> categoryList;
  const CategoryListDrinkLoaded(this.categoryList);
}

class CategoryListError extends CategoryListState {
  final String? message;
  const CategoryListError(this.message);
}
