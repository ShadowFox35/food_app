import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppConstants.settingsTitle,
          style: GoogleFonts.poppins(textStyle: AppFonts.normal_18)
              .copyWith(color: AppColors.darkGrey)),
    );
  }
}
