// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    MenuRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MenuScreen(),
      );
    },
    DishRoute.name: (routeData) {
      final args = routeData.argsAs<DishRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DishScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'welcome',
          fullMatch: true,
        ),
        RouteConfig(
          WelcomeRoute.name,
          path: 'welcome',
        ),
        RouteConfig(
          SettingsRoute.name,
          path: 'settings',
        ),
        RouteConfig(
          MenuRoute.name,
          path: 'menu',
        ),
        RouteConfig(
          DishRoute.name,
          path: 'dish',
        ),
      ];
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: 'welcome',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute()
      : super(
          MenuRoute.name,
          path: 'menu',
        );

  static const String name = 'MenuRoute';
}

/// generated route for
/// [DishScreen]
class DishRoute extends PageRouteInfo<DishRouteArgs> {
  DishRoute({
    Key? key,
    required MenuItemEntity model,
  }) : super(
          DishRoute.name,
          path: 'dish',
          args: DishRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'DishRoute';
}

class DishRouteArgs {
  const DishRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final MenuItemEntity model;

  @override
  String toString() {
    return 'DishRouteArgs{key: $key, model: $model}';
  }
}
