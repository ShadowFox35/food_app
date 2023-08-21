import 'package:core/core.dart';
import 'package:data/providers/local/hive_provider.dart';
import 'package:data/di/cart_di.dart';
import 'package:data/di/menu_di.dart';
import 'package:data/di/theme_di.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    await _initHive();
    await menuDI.initDependencies();
    await themeDI.initDependencies();
    await cartDI.initDependencies();
  }

  Future<void> _initHive() async {
    final HiveProvider hiveProvider = HiveProvider();
    await hiveProvider.init();
    appLocator.registerSingleton<HiveProvider>(hiveProvider);
  }
}
