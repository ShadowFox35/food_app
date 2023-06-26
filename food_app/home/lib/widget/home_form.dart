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
                  const SizedBox(width: 21),
                  Column(
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
                ],
              ),
              const SizedBox(height: 33),
              SizedBox(
                width: 213,
                height: 243,
                child: Image.asset(ImagePaths.homeImage),
              ),
              const SizedBox(
                height: 41,
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
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
