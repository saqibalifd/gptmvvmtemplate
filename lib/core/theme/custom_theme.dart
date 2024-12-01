import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge:
          TextStyle(color: Colors.black, fontSize: 16), // Replaces bodyText1
      bodyMedium:
          TextStyle(color: Colors.black54, fontSize: 14), // Replaces bodyText2
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge:
          TextStyle(color: Colors.white, fontSize: 16), // Replaces bodyText1
      bodyMedium:
          TextStyle(color: Colors.white70, fontSize: 14), // Replaces bodyText2
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
