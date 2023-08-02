import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.size_335,
      height: AppDimens.size_50,
      margin: const EdgeInsets.only(bottom: AppDimens.padding_60),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(AppDimens.radius_10),
      ),
      child: Center(
        child: Text(
          AppConstants.addToCart.toUpperCase(),
          style: GoogleFonts.poppins(textStyle: AppFonts.buttons_14)
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
