import 'package:core/di/app_di.dart';

import 'package:data/providers/local/hive_provider.dart';
import 'package:data/repositories/cart/cart_repository_impl.dart';
import 'package:domain/domain.dart';

final CartDI cartDI = CartDI();

class CartDI {
  Future<void> initDependencies() async {
    _initCart();
  }

  void _initCart() {
    appLocator.registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(
        hiveProvider: appLocator<HiveProvider>(),
      ),
    );

    appLocator.registerLazySingleton<SaveItemsUseCase>(
      () => SaveItemsUseCase(
        cartRepository: appLocator<CartRepository>(),
      ),
    );
    appLocator.registerLazySingleton<GetItemsUseCase>(
      () => GetItemsUseCase(
        cartRepository: appLocator<CartRepository>(),
      ),
    );
    appLocator.registerLazySingleton<ClearCartUseCase>(
      () => ClearCartUseCase(
        cartRepository: appLocator<CartRepository>(),
      ),
    );
    appLocator.registerLazySingleton<ChangeItemsCountUseCase>(
      () => ChangeItemsCountUseCase(
        cartRepository: appLocator<CartRepository>(),
      ),
    );
  }
}
