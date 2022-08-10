part of 'category_list_bloc.dart';

abstract class CategoryListEvent extends Equatable {
  const CategoryListEvent();

  @override
  List<Object> get props => [];
}

class GetCategoryList extends CategoryListEvent {
  final String item;
  final String category;

  const GetCategoryList({
    required this.item,
    required this.category,
  });
}
