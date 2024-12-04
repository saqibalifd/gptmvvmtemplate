import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ThemeTextStyle {
  static const TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle(
        color: AppColors.secondary, fontSize: 32, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        color: AppColors.secondary, fontSize: 28, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(
        color: AppColors.secondary, fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: AppColors.secondary, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
    bodySmall: TextStyle(color: Colors.black45, fontSize: 12),
    labelLarge: TextStyle(color: AppColors.secondary, fontSize: 14),
    labelMedium: TextStyle(color: Colors.black54, fontSize: 12),
    labelSmall: TextStyle(color: Colors.black45, fontSize: 10),
  );

  static const TextTheme darkTextTheme = TextTheme(
    titleLarge: TextStyle(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
    bodySmall: TextStyle(color: Colors.white54, fontSize: 12),
    labelLarge: TextStyle(color: Colors.white, fontSize: 14),
    labelMedium: TextStyle(color: Colors.white70, fontSize: 12),
    labelSmall: TextStyle(color: Colors.white54, fontSize: 10),
  );
}
