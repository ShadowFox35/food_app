import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(),
      body: const SafeArea(
        child: AutoRouter(),
      ),
    );
  }
}
