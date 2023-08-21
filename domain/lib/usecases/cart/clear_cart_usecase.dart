import 'package:domain/repositories/cart_repository.dart';
import 'package:domain/usecases/usecases.dart';

class ClearCartUseCase implements FutureUseCase<void, NoParams> {
  final CartRepository _cartRepository;

  const ClearCartUseCase({required CartRepository cartRepository})
      : _cartRepository = cartRepository;

  @override
  Future<void> execute(NoParams input) => _cartRepository.clearCart();
}
