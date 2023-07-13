import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: AppDimens.padding_60,
                horizontal: AppDimens.padding_25),
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
                    Expanded(
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: AppDimens.padding_20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Tamang FoodService',
                              style: AppFonts.bold_37,
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            // Text(
                            //   'FoodService',
                            //   style: AppFonts.bold_37,
                            // ),
                          ],
                        ),
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
                const Text(
                  'Welcome',
                  style: AppFonts.bold_28,
                ),
                Container(
                  margin: const EdgeInsets.all(AppDimens.padding_25),
                  child: const Text(
                    'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                    style: AppFonts.normal_16,
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
      ),
    );
  }
}
