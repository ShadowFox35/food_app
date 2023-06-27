import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:home/home.dart';
import 'package:home/screen/menu_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      name: 'menu',
      page: MenuScreen,
      // path: 'menu_screen/:id',
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
