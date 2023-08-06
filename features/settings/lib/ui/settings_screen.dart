import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:settings/bloc/settings_bloc.dart';

import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          AppConstants.settingsTitle,
          style: AppFonts.normal_18.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (BuildContext context, SettingsState state) {
          return Container(
            padding: const EdgeInsets.all(AppDimens.padding_20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      AppConstants.themeOption,
                      style: AppFonts.normal_18.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Switch(
                      onChanged: (bool value) =>
                          BlocProvider.of<SettingsBloc>(context).add(
                        SetThemeEvent(isDark: value),
                      ),
                      activeColor: Theme.of(context).primaryColor,
                      value: state.isDark,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
