part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class GetCategories extends CategoriesEvent {
  final String item;

  const GetCategories({
    required this.item,
  });
}
