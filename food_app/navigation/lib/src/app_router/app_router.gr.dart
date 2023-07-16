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
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
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
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          MenuRoute.name,
          path: 'menu_screen',
        ),
        RouteConfig(
          DishRoute.name,
          path: 'dish_screen',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute()
      : super(
          MenuRoute.name,
          path: 'menu_screen',
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
          path: 'dish_screen',
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
