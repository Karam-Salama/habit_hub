import 'package:flutter/material.dart';

import '../core/functions/onGenerate_route.dart';
import '../core/utils/theme.dart';
import '../modules/splash/screens/splash_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
