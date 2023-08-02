import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:navigation/navigation.dart';
import 'package:food_app/app/food_app.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dataDI.initDependencies();
  initNavigationDependencies();
  runApp(const FoodApp());
}
