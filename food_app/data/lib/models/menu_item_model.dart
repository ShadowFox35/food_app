import 'package:domain/domain.dart';

class MenuItemModel extends MenuItemEntity {
  final String image;
  final String name;
  final String type;
  final String ingredients;
  final double cost;

  const MenuItemModel(
      {required this.image,
      required this.name,
      required this.type,
      required this.ingredients,
      required this.cost})
      : super(
            image: image,
            name: name,
            type: type,
            ingredients: ingredients,
            cost: cost);
}
