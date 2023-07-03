import 'package:core/core.dart';
import 'package:data/models/menu_item_model.dart';

class FirebaseProvider {
  late final List<MenuItemModel> menuItems = [];

  Future<List<MenuItemModel>> fetchMenuItems() async {
    if (menuItems.isEmpty) {
      await _getMenuItems();
    }

    return menuItems;
  }

  Future<void> _getMenuItems() async {
    final fbMenu = (await FirebaseFirestore.instance.collection('menu').get())
        .docs
        .toList();

    for (var fbItem in fbMenu) {
      menuItems.add(MenuItemModel(
        image: fbItem['image'] as String,
        name: fbItem['name'] as String,
        type: fbItem['type'] as String,
        ingredients: fbItem['ingredients'] as String,
        cost: (fbItem['cost'] as num).toDouble(),
      ));
    }
  }
}
