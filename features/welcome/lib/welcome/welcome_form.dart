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
                      child: SvgPicture.asset(
                        ImagePaths.logoImage,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: AppDimens.padding_20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppConstants.logoTitle,
                              style: GoogleFonts.poppins(
                                  textStyle: AppFonts.bold_37),
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
                    vertical: AppDimens.padding_20,
                  ),
                  child: SizedBox(
                    width: AppDimens.size_280,
                    height: AppDimens.size_280,
                    child: SvgPicture.asset(
                      ImagePaths.homeImage,
                    ),
                  ),
                ),
                Text(
                  AppConstants.welcome,
                  style: GoogleFonts.poppins(textStyle: AppFonts.bold_28),
                ),
                Container(
                  margin: const EdgeInsets.all(AppDimens.padding_25),
                  child: Text(
                    AppConstants.welcomeMessage,
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_16),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const HomeRoute());
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
