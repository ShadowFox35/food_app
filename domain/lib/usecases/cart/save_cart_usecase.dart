import 'package:domain/domain.dart';

class SaveItemsUseCase implements FutureUseCase<void, CartItemEntity> {
  final CartRepository _cartRepository;

  const SaveItemsUseCase({required CartRepository cartRepository})
      : _cartRepository = cartRepository;

  @override
  Future<void> execute(CartItemEntity input) {
    return _cartRepository.saveItems(input);
  }
}
