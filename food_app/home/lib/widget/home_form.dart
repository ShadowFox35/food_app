import 'package:flutter/material.dart';

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
              Expanded(
                child: Row(
                  children: const [
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: Placeholder(),
                    ),
                    SizedBox(
                      child: Text('Tamang FoodService'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 213,
                height: 243,
                child: Placeholder(),
              ),
              const SizedBox(
                height: 41,
              ),
              const Text('Welcome'),
              const SizedBox(
                height: 24,
              ),
              const Text(
                  'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                width: 335,
                height: 48,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
