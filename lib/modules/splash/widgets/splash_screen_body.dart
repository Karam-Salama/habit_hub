// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../../../core/functions/navigation.dart';
import '../../../core/utils/assets.dart';
import '../../home/screens/home_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    delayedNavigate(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(Assets.assetsImagesSplashScreen)),
    );
  }

  void delayedNavigate(String routeName) {
    Future.delayed(const Duration(seconds: 3), () {
      customReplacementNavigate(context, routeName);
    });
  }
}
