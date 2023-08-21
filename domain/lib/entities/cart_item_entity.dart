import 'package:domain/entities/menu_item_entity.dart';
import 'package:equatable/equatable.dart';

class CartItemEntity extends Equatable {
  final DishEntity dishEntity;
  final int count;

  double get totalCost => count * dishEntity.cost;

  const CartItemEntity({
    required this.dishEntity,
    required this.count,
  });

  CartItemEntity copyWith({
    DishEntity? entity,
    int? count,
  }) {
    return CartItemEntity(
        dishEntity: entity ?? dishEntity, count: count ?? this.count);
  }

  @override
  List<Object?> get props => [count];
}
