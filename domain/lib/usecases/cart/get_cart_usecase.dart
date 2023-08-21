import 'package:domain/entities/cart_item_entity.dart';
import 'package:domain/repositories/cart_repository.dart';
import 'package:domain/usecases/usecases.dart';

class GetItemsUseCase implements UseCase<List<CartItemEntity>, NoParams> {
  final CartRepository _cartRepository;

  const GetItemsUseCase({required CartRepository cartRepository})
      : _cartRepository = cartRepository;

  @override
  execute(NoParams input) {
    return _cartRepository.getItems();
  }
}
