import 'package:core_ui/core_ui.dart';

import 'package:flutter/material.dart';

class LessButton extends StatelessWidget {
  const LessButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColors.grey,
            width: 1.0,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(ImagePaths.minusIcon),
        ),
      ),
    );
  }
}
