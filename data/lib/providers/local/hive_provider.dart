import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveProvider {
  late Box<bool> _themeBox;
  late Box<CartItemModel> _cartBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CartItemModelAdapter());
    Hive.registerAdapter(DishModelAdapter());
    _themeBox = await Hive.openBox(HiveKeys.themeKey);
    _cartBox = await Hive.openBox<CartItemModel>(HiveKeys.cartBox);
  }

  Future<bool> getTheme() async => _themeBox.get(HiveKeys.themeKey) ?? true;

  Future<void> saveTheme(bool isDark) async =>
      await _themeBox.put(HiveKeys.themeKey, isDark);

  List<CartItemModel> getCartItems() => _cartBox.values.toList();

  Future<void> saveCartItems(CartItemModel item) async {
    for (CartItemModel element in _cartBox.values) {
      if (element.dishModel.id == item.dishModel.id) {
        await _cartBox.put(
          element.dishModel.id,
          CartItemModel(
            dishModel: element.dishModel,
            count: element.count + 1,
          ),
        );
        print(element.dishModel.name);
        print(_cartBox.values.toList());
        return;
      }
    }
    await _cartBox.put(item.dishModel.id, item);
  }

  Future<void> clearCart() async => await _cartBox.clear();

  int getCartItemsCount() {
    int count = 0;
    for (CartItemModel elem in _cartBox.values) {
      count += elem.count;
    }
    return count;
  }

  Future<void> changeItemsCount(CartItemModel item) async {
    for (CartItemModel elem in _cartBox.values) {
      if (elem.dishModel.id == item.dishModel.id) {
        if (item.count == 0) {
          await _cartBox.delete(elem.dishModel.id);
          break;
        }
        await _cartBox.put(
          elem.dishModel.id,
          CartItemModel(
            dishModel: elem.dishModel,
            count: item.count,
          ),
        );
        break;
      }
    }
  }
}
