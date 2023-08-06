import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:menu/bloc/menu_bloc.dart';

import 'menu_item.dart';

import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  final List<MenuItemEntity> itemModels;
  const MenuList(this.itemModels, {super.key});

  @override
  State<StatefulWidget> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(AppDimens.padding_25),
        child: ListView.separated(
          itemCount: widget.itemModels.length,
          itemBuilder: (BuildContext context, int index) {
            final MenuItemEntity menuItem = widget.itemModels[index];
            return GestureDetector(
              onTap: () {
                BlocProvider.of<MenuBloc>(context).add(
                  NavigateToDishEvent(menuItem: menuItem),
                );
              },
              child: MenuItem(
                name: menuItem.name,
                ingredients: menuItem.ingredients,
                image: menuItem.image,
                cost: menuItem.cost,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: AppDimens.padding_40);
          },
        ),
      ),
    );
  }
}
