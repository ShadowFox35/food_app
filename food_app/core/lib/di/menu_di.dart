import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

final MenuDI menuDI = MenuDI();

class MenuDI {
  Future<void> initDependencies() async {
    _initFirebase();
    _initDishes();
  }

  void _initFirebase() {
    GetIt.I.registerLazySingleton<FirebaseProvider>(
      () => FirebaseProvider(),
    );
  }

  void _initDishes() {
    GetIt.I.registerLazySingleton<MenuItemRepository>(
        () => MenuItemRepository(GetIt.I.get<FirebaseProvider>()));

    GetIt.I.registerLazySingleton<GetMenuList>(
      () => GetMenuList(GetIt.I.get<MenuItemRepository>()),
    );
  }
}
