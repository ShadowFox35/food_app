import 'package:core/core.dart';

class HiveProvider {
  late final Box<bool> _themeBox;

  Future<void> openBoxes() async {
    _themeBox = await Hive.openBox(HiveKeys.themeBox);
  }

  Future<void> saveTheme(bool isDark) async =>
      await _themeBox.put(HiveKeys.themeKey, isDark);

  Future<bool> getTheme() async => _themeBox.get(HiveKeys.themeKey) ?? true;
}
