import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class DishCounter extends StatelessWidget {
  const DishCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppDimens.padding_30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(right: AppDimens.padding_20),
              height: 55,
              width: 55,
              child: const LessButton()),
          Text(
            '01',
            style: GoogleFonts.poppins(textStyle: AppFonts.normal_20)
                .copyWith(color: AppColors.black),
          ),
          Container(
            margin: const EdgeInsets.only(left: AppDimens.padding_20),
            height: 55,
            width: 55,
            child: const MoreButton(),
          ),
        ],
      ),
    );
  }
}
