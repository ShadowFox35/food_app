import 'package:core_ui/core_ui.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppConstants.orderHistoryTitle,
        style: GoogleFonts.poppins(textStyle: AppFonts.normal_18),
      ),
    );
  }
}
