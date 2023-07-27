import 'package:flutter/material.dart';
import 'package:menu/bloc/menu_bloc.dart';

import 'menu_list.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';

class MenuForm extends StatelessWidget {
  const MenuForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuBloc>(
      create: (BuildContext context) => MenuBloc(
        getMenuListUsecase: appLocator.get<GetMenuListUseCase>(),
      ),
      child: BlocBuilder<MenuBloc, MenuState>(
        builder: (BuildContext context, MenuState state) {
          if (state.error != null) {}
          if (!state.isLoading) {
            return Scaffold(
              body: SafeArea(child: MenuList(state.dishesList)),
            );
          }
          return Center(
              child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
          ));
        },
      ),
    );
  }
}
