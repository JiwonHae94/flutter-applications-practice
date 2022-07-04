import 'package:equatable/equatable.dart';

class Color extends Equatable{
  const Color({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final int price;

  @override
  List<Object> get props => [id];
}