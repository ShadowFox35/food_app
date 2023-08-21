import 'package:equatable/equatable.dart';

class DishEntity extends Equatable {
  final String image;
  final String name;
  final String type;
  final String ingredients;
  final String details;
  final double cost;
  final String id;

  const DishEntity({
    required this.image,
    required this.name,
    required this.type,
    required this.ingredients,
    required this.details,
    required this.cost,
    required this.id,
  });

  @override
  List<Object?> get props => [image, name, type, ingredients, cost, id];
}
