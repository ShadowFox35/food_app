import '../entities/menu_item_entity.dart';

abstract class IUseCase<Type, Params> {
  Future<List<MenuItemEntity>> call(Params params);
}
