import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

final GetIt appLocator = GetIt.instance;
final MenuDI menuDI = MenuDI();

class MenuDI {
  Future<void> initDependencies() async {
    _initFirebase();
    _initDishes();
  }

  void _initFirebase() {
    appLocator.registerLazySingleton<FirebaseProvider>(
      () => FirebaseProvider(),
    );
  }

  void _initDishes() {
    appLocator.registerLazySingleton<MenuItemRepository>(
        () => MenuItemRepository(appLocator.get<FirebaseProvider>()));

    appLocator.registerLazySingleton<GetMenuListUseCase>(
      () => GetMenuListUseCase(appLocator.get<MenuItemRepository>()),
    );
  }
}
