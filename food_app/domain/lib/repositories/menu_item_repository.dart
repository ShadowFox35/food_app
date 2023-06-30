import '../entities/menu_item_entity.dart';

abstract class MenuItemRepository {
  Future<List<MenuItemEntity>> getMenuList(int page);
  Future<List<MenuItemEntity>> findMenuItem(String query);
}
