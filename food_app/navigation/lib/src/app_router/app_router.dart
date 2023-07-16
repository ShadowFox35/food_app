import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: MenuScreen,
      path: 'menu_screen',
    ),
    AutoRoute(
      page: DishScreen,
      path: 'dish_screen',
    ),
  ],
)
class AppRouter extends _$AppRouter {}