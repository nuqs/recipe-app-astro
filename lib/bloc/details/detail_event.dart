part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  const DetailEvent();

  @override
  List<Object> get props => [];
}

class GetDetail extends DetailEvent {
  final String id;
  final String item;

  const GetDetail({
    required this.id,
    required this.item,
  });
}
