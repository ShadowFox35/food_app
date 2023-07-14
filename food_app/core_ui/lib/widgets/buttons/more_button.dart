import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'package:core_ui/design/app_colors.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key});

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
          child: SvgPicture.asset(ImagePaths.plusIcon),
        ),
      ),
    );
  }
}
