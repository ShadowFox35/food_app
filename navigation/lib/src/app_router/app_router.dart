import 'package:auto_route/auto_route.dart';

import 'package:cart/cart.dart';
import 'package:dish/dish.dart';
import 'package:domain/domain.dart';
import 'package:home/home.dart';
import 'package:menu/menu.dart';
import 'package:order_history/order_history.dart';
import 'package:settings/settings.dart';
import 'package:welcome/welcome.dart';

import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: WelcomeScreen,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: HomeScreen,
      path: 'home',
      children: [
        AutoRoute(
          page: MenuScreen,
          path: 'menu',
          initial: true,
        ),
        AutoRoute(
          page: CartScreen,
          path: 'cart',
        ),
        AutoRoute(
          page: SettingsScreen,
          path: 'settings',
        ),
        AutoRoute(
          page: OrderHistoryScreen,
          path: 'history',
        ),
      ],
    ),
    AutoRoute(
      page: DishScreen,
      path: 'dish',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
