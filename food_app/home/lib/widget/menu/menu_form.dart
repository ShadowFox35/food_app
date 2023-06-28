import 'package:flutter/material.dart';
import 'menu_list.dart';
// import 'package:core_ui/core_ui.dart';

class MenuForm extends StatelessWidget {
  const MenuForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: MenuList(),
    ));
  }
}
