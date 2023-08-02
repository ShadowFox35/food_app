import 'package:core_ui/core_ui.dart';
import 'package:core/core.dart';
import 'package:navigation/navigation.dart';

import 'package:flutter/material.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo>[
        MenuRoute(),
        CartRoute(),
        OrderHistoryRoute(),
        SettingsRoute(),
      ],
      animationDuration: Duration.zero,
      bottomNavigationBuilder: (BuildContext context, TabsRouter router) {
        return BottomNavigationBar(
          currentIndex: router.activeIndex,
          onTap: router.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.grey,
          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.darkGrey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.bakery_dining_outlined, color: AppColors.orange),
              icon: Icon(Icons.bakery_dining_outlined, color: Colors.grey),
              label: AppConstants.homeTitle,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite_border, color: AppColors.orange),
              icon: Icon(Icons.favorite_border, color: Colors.grey),
              label: AppConstants.cartTitle,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.history_edu, color: AppColors.orange),
              icon: Icon(Icons.history_edu, color: Colors.grey),
              label: AppConstants.orderHistoryTitle,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings, color: AppColors.orange),
              icon: Icon(Icons.settings, color: Colors.grey),
              label: AppConstants.settingsTitle,
            ),
          ],
        );
      },
    );
  }
}
