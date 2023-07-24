import 'package:core/config/firebase_options.dart';
import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:food_app/app/food_app.dart';
import 'package:navigation/navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initNavigationDependencies();
  await menuDI.initDependencies();
  runApp(const FoodApp());
}
