import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge:
          TextStyle(color: Colors.black, fontSize: 16), // Replaces bodyText1
      bodyMedium:
          TextStyle(color: Colors.black54, fontSize: 14), // Replaces bodyText2
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.accent,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: AppColors.accent,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge:
          TextStyle(color: Colors.white, fontSize: 16), // Replaces bodyText1
      bodyMedium:
          TextStyle(color: Colors.white70, fontSize: 14), // Replaces bodyText2
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.accent,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
