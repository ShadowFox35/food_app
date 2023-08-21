import 'package:data/mappers/dish_mapper.dart';
import 'package:data/models/cart/cart_item_model.dart';
import 'package:domain/domain.dart';

abstract class CartItemMapper {
  static CartItemEntity toEntity(CartItemModel model) {
    return CartItemEntity(
      dishEntity: DishMapper.toEntity(model.dishModel),
      count: model.count,
    );
  }

  static CartItemModel toModel(CartItemEntity entity) {
    return CartItemModel(
      dishModel: DishMapper.toModel(entity.dishEntity),
      count: entity.count,
    );
  }
}
