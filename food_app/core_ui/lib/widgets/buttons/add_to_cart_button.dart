import 'package:flutter/material.dart';
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
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Add to Cart'.toUpperCase(),
          style: GoogleFonts.poppins(textStyle: AppFonts.buttons_14)
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
