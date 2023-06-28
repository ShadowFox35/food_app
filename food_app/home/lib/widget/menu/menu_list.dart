import 'package:flutter/material.dart';

import 'menu_item.dart';
// import 'package:core_ui/core_ui.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: ListView(
              children: [
                Center(
                  child: MenuItem(
                    key: key,
                  ),
                ),
              ],
            )));
  }
}
