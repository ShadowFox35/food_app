import '../entities/menu_item_entity.dart';

abstract class IUseCase<Type, int> {
  Future<List<MenuItemEntity>> call(int page);
}
