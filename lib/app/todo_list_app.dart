import 'package:flutter/material.dart';

import '../core/functions/onGenerate_route.dart';
import '../modules/splash/splash_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
