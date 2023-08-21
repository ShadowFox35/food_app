import 'package:data/mappers/cart_item_mapper.dart';
import 'package:data/models/cart/cart_item_model.dart';
import 'package:data/providers/local/hive_provider.dart';
import 'package:domain/domain.dart';

class CartRepositoryImpl implements CartRepository {
  final HiveProvider _hiveProvider;

  const CartRepositoryImpl({required HiveProvider hiveProvider})
      : _hiveProvider = hiveProvider;

  @override
  List<CartItemEntity> getItems() {
    final List<CartItemModel> result = _hiveProvider.getCartItems();
    return result.map((CartItemModel e) => CartItemMapper.toEntity(e)).toList();
  }

  @override
  Future<void> saveItems(CartItemEntity item) => _hiveProvider.saveCartItems(
        CartItemMapper.toModel(item),
      );

  @override
  Future<void> clearCart() => _hiveProvider.clearCart();

  @override
  int getItemsCount() => _hiveProvider.getCartItemsCount();

  @override
  Future<void> changeItemsCount(CartItemEntity item) =>
      _hiveProvider.changeItemsCount(
        CartItemMapper.toModel(item),
      );
}
