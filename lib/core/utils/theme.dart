import 'package:flutter/material.dart';
import 'package:habit_hub/core/utils/colors.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackground,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 24.0, color: AppColors.whiteColor),
      headlineMedium: TextStyle(fontSize: 22.0, color: AppColors.whiteColor),
      headlineSmall: TextStyle(fontSize: 20.0, color: AppColors.whiteColor),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(size: 30, color: AppColors.whiteColor),
      toolbarHeight: 80.0,
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: AppColors.lightPrimary,
      titleTextStyle: TextStyle(
        fontSize: 40.0,
        fontFamily: 'Poppins',
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.whiteColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightPrimary,
      selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      unselectedIconTheme: IconThemeData(color: AppColors.whiteColor),
      selectedLabelStyle: TextStyle(color: AppColors.blackColor),
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackground,
    textTheme: const TextTheme(),
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(),
    bottomSheetTheme: const BottomSheetThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
  );
}
