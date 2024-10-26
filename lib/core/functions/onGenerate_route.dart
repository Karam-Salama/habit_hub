// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../modules/splash/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}