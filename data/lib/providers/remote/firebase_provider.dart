import 'package:core/core.dart';
import 'package:data/data.dart';

class FirebaseProvider {
  Future<List<DishModel>> fetchMenuItems() async {
    return await _getMenuItems();
  }

  Future<List<DishModel>> _getMenuItems() async {
    late final List<DishModel> menuItems = [];

    final fbMenu = (await FirebaseFirestore.instance.collection('menu').get())
        .docs
        .toList();

    for (var fbItem in fbMenu) {
      menuItems.add(DishModel.fromJson(fbItem.data()));
    }
    return menuItems;
  }
}
