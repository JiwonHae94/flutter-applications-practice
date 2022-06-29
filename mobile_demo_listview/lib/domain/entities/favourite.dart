import 'package:equatable/equatable.dart';

class Favourite extends Equatable{
  const Favourite({required this.id, required this.label, this.imageURL, this.description});

  final int id;
  final String label;
  final String? imageURL;
  final String? description;

  @override
  List<Object?> get props => [id, label];
}