import 'package:core_ui/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: Center(
        child: Text(
          'Get Started'.toUpperCase(),
          style: AppFonts.buttons_14,
        ),
      ),
    );
  }
}
