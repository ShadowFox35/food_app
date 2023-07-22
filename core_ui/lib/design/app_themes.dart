import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      splashColor: AppColors.lightGrey,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.orange,
      iconTheme: const IconThemeData(
        color: AppColors.orange,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.darkGrey,
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      splashColor: AppColors.ashGrey,
      scaffoldBackgroundColor: AppColors.darkGrey,
      primaryColor: AppColors.orange,
      iconTheme: const IconThemeData(
        color: AppColors.orange,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
