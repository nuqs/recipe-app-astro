part of 'detail_bloc.dart';

abstract class DetailState extends Equatable {
  const DetailState();

  @override
  List<Object> get props => [];
}

class DetailInitial extends DetailState {}

class DetailLoading extends DetailState {}

class DetailFoodLoaded extends DetailState {
  final List<FoodDetails> detail;
  const DetailFoodLoaded(this.detail);
}

class DetailDrinkLoaded extends DetailState {
  final List<DrinkDetails> detail;
  const DetailDrinkLoaded(this.detail);
}

class DetailError extends DetailState {
  final String? message;
  const DetailError(this.message);
}
