import 'package:domain/domain.dart';

class ChangeItemsCountUseCase implements FutureUseCase<void, CartItemEntity> {
  final CartRepository _cartRepository;

  const ChangeItemsCountUseCase({required CartRepository cartRepository})
      : _cartRepository = cartRepository;

  @override
  Future<void> execute(CartItemEntity input) =>
      _cartRepository.changeItemsCount(input);
}
