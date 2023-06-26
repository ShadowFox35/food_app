import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 80, 24, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: Image.asset(ImagePaths.logoImage),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                margin: const EdgeInsets.fromLTRB(0, 35, 0, 40),
                child: SizedBox(
                  width: 215,
                  height: 245,
                  child: Image.asset(ImagePaths.homeImage),
                ),
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 60),
                child: Text(
                  'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 335,
                height: 48,
                child: GeneralButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
