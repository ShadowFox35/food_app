import 'package:domain/entities/cart_item_entity.dart';

abstract class CartRepository {
  Future<void> saveItems(CartItemEntity item);
  Future<void> changeItemsCount(CartItemEntity item);
  List<CartItemEntity> getItems();
  int getItemsCount();
  Future<void> clearCart();
}
