import 'package:core_ui/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.size_335,
      height: AppDimens.size_50,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Add to Card'.toUpperCase(),
          style: AppFonts.buttons_14,
        ),
      ),
    );
  }
}
