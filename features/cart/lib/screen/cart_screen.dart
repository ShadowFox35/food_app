import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppConstants.cartTitle,
          style: GoogleFonts.poppins(textStyle: AppFonts.normal_18)
              .copyWith(color: AppColors.darkGrey)),
    );
  }
}
