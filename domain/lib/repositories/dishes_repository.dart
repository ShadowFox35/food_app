import '../entities/menu_item_entity.dart';

abstract class IDishesRepository {
  Future<List<DishEntity>> getMenuList(int page);
}
