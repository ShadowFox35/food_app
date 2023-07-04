import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: AppDimens.padding_80, horizontal: AppDimens.padding_25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: AppDimens.size_65,
                    height: AppDimens.size_65,
                    child: Image.asset(ImagePaths.logoImage),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: AppDimens.padding_20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tamang',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'FoodService',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: AppDimens.padding_40,
                ),
                child: SizedBox(
                  width: AppDimens.size_215,
                  height: AppDimens.size_245,
                  child: Image.asset(ImagePaths.homeImage),
                ),
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: AppDimens.padding_25, bottom: AppDimens.padding_60),
                child: Text(
                  'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pushNamed('menu_screen');
                },
                child: const SizedBox(
                  width: AppDimens.size_335,
                  height: AppDimens.size_50,
                  child: GeneralButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
