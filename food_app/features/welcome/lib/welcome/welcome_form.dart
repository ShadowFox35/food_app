import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class WelcomeForm extends StatelessWidget {
  const WelcomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: AppDimens.padding_20,
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
                          children: [
                            Text(
                              'Tamang FoodService',
                              style: GoogleFonts.poppins(
                                      textStyle: AppFonts.bold_37)
                                  .copyWith(color: AppColors.black),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
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
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(textStyle: AppFonts.bold_28)
                      .copyWith(color: AppColors.black),
                ),
                Container(
                  margin: const EdgeInsets.all(AppDimens.padding_25),
                  child: Text(
                    'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_16)
                        .copyWith(color: AppColors.darkGrey),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const MenuRoute());
                  },
                  child: const GeneralButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
