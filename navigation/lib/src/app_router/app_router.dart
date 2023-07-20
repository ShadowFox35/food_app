import 'package:auto_route/auto_route.dart';
import 'package:dish/dish.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:menu/menu.dart';
import 'package:settings/settings.dart';
import 'package:welcome/welcome.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route', 
  routes: <AutoRoute>[
    AutoRoute(
      page: WelcomeScreen,
      path: 'welcome',
      initial: true,
    ),
    AutoRoute(
      page: SettingsScreen,
      path: 'settings',
    ),
    AutoRoute(
      page: MenuScreen,
      initial: true,
      path: 'menu',
    ),
    AutoRoute(
      page: DishScreen,
      path: 'dish',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
