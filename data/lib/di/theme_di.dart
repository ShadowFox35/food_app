import 'package:core/di/app_di.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

import 'package:data/providers/local/hive_provider.dart';

final ThemeDI themeDI = ThemeDI();

class ThemeDI {
  Future<void> initDependencies() async {
    _initTheme();
  }

  void _initTheme() {
    appLocator.registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(hiveProvider: appLocator<HiveProvider>()),
    );

    appLocator.registerLazySingleton<SetThemeUseCase>(
      () => SetThemeUseCase(themeRepository: appLocator.get<ThemeRepository>()),
    );

    appLocator.registerLazySingleton<GetThemeUseCase>(
      () => GetThemeUseCase(themeRepository: appLocator.get<ThemeRepository>()),
    );
  }
}
