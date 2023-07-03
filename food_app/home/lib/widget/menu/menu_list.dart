import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuList extends StatefulWidget {
  final List<MenuItemEntity> _itemModels;
  const MenuList(this._itemModels, {super.key});

  @override
  State<StatefulWidget> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: ListView(
              children: List.generate(
                widget._itemModels.length,
                (index) => MenuItem(
                  widget._itemModels[index].name,
                  widget._itemModels[index].image,
                  widget._itemModels[index].cost,
                ),
              ),
            )));
  }
}
