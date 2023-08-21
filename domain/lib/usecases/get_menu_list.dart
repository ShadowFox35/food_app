import 'package:domain/usecases/usecases.dart';

import '../entities/menu_item_entity.dart';
import '../repositories/dishes_repository.dart';

class GetMenuListUseCase extends FutureUseCase<List<DishEntity>, int> {
  final IDishesRepository dishesRepository;

  GetMenuListUseCase(this.dishesRepository);

  @override
  Future<List<DishEntity>> execute(int input) async {
    return await dishesRepository.getMenuList(input);
  }
}
