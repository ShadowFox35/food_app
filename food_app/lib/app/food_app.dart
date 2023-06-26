import 'package:flutter/material.dart';

import 'package:core_ui/core_ui.dart';
import 'package:home/home.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const HomeScreen());
  }
}
