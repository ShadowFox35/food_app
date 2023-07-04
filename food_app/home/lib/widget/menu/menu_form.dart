import 'package:flutter/material.dart';
import 'package:home/bloc/menu_bloc/menu_bloc.dart';
import 'menu_list.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';

class MenuForm extends StatelessWidget {
  const MenuForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuBloc>(
      create: (BuildContext context) => MenuBloc(
        appLocator.get<GetMenuListUseCase>(),
      ),
      child: BlocBuilder<MenuBloc, MenuState>(
        builder: (BuildContext context, MenuState state) {
          if (state is MenuStateFail) {}
          if (state is MenuStateLoaded) {
            return Scaffold(
              body: SafeArea(child: MenuList(state.menuListLoaded)),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
