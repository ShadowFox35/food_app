import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.size_335,
      height: AppDimens.size_50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          AppConstants.getStarted.toUpperCase(),
          style: GoogleFonts.poppins(textStyle: AppFonts.buttons_14)
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
