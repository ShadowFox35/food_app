import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:navigation/navigation.dart';
import 'package:settings/settings.dart';

// class FoodApp extends StatefulWidget {
//   const FoodApp({super.key});

//   @override
//   State<FoodApp> createState() => _FoodAppState();
// }

// class _FoodAppState extends State<FoodApp> {
//   final _appRouter = AppRouter();

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp.router(
//       routerDelegate: _appRouter.delegate(),
//       routeInformationParser: _appRouter.defaultRouteParser(),
//     );
//   }
// }

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SettingsBloc(
        setThemeUseCase: appLocator<SetThemeUseCase>(),
        getThemeUseCase: appLocator<GetThemeUseCase>(),
      ),
      child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (BuildContext context, SettingsState state) {
        return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            // routerDelegate: appLocator<AppRouter>().delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            // routeInformationParser:
            //     appLocator<AppRouter>().defaultRouteParser(),
            theme: state.isDark ? AppTheme.dark : AppTheme.light);
      }),
    );
  }
}
