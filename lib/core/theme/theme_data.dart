import 'package:chatgpttemplate/core/theme/theme_text_style.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

export 'theme_color.dart';
export 'theme_text_style.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    // General Theme Settings
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primary,
    cardColor: AppColors.blue,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.secondary,
      selectionColor: AppColors.blue,
      selectionHandleColor: AppColors.secondary,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      color: AppColors.blue,
      iconTheme: IconThemeData(color: AppColors.secondary),
      titleTextStyle: TextStyle(
        color: AppColors.secondary,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4,
    ),

    // Text Theme
    textTheme: ThemeTextStyle.lightTextTheme,

    // Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.blue,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    // Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.secondary,
      elevation: 6,
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: AppColors.secondary,
      size: 24,
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.blue, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.blue, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: const TextStyle(color: AppColors.secondary),
      hintStyle: const TextStyle(color: Colors.black54),
    ),

    // Slider Theme
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.blue,
      inactiveTrackColor: Colors.black12,
      thumbColor: AppColors.secondary,
      overlayColor: AppColors.secondary.withOpacity(0.2),
      valueIndicatorColor: AppColors.blue,
    ),

    // Dialog Theme
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          color: AppColors.primary, fontSize: 20, fontWeight: FontWeight.bold),
      contentTextStyle: TextStyle(color: Colors.black54, fontSize: 16),
    ),

    // Checkbox Theme
    checkboxTheme: const CheckboxThemeData(
      checkColor: WidgetStatePropertyAll(AppColors.primary),
      fillColor: WidgetStatePropertyAll(AppColors.secondary),
    ),

    // Radio Theme
    radioTheme: const RadioThemeData(
      fillColor: WidgetStatePropertyAll(AppColors.secondary),
      splashRadius: 20,
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.blue.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      labelStyle: const TextStyle(color: AppColors.secondary),
      deleteIconColor: AppColors.secondary,
    ),

    // Tab Bar Theme
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.secondary,
      unselectedLabelColor: Colors.black54,
      indicator: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: AppColors.secondary, width: 2)),
      ),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true,
    ),

    // SnackBar Theme
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.blue,
      contentTextStyle: TextStyle(color: Colors.white),
      actionTextColor: AppColors.secondary,
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      space: 10,
      thickness: 1,
      color: Colors.black12,
    ),

    // Page Route Theme
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static ThemeData darkTheme = ThemeData(
    // General Theme Settings
    brightness: Brightness.dark,
    primaryColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.secondary,
    cardColor: AppColors.blue,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: AppColors.blue,
      selectionHandleColor: AppColors.secondary,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      color: AppColors.blue,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4,
    ),

    // Text Theme
    textTheme: ThemeTextStyle.darkTextTheme,

    // Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.blue,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    // Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.blue,
      foregroundColor: Colors.white,
      elevation: 6,
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 24,
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.black45,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.blue, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.blue, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: const TextStyle(color: Colors.white),
      hintStyle: const TextStyle(color: Colors.white54),
    ),

    // Slider Theme
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.blue,
      inactiveTrackColor: Colors.black38,
      thumbColor: AppColors.secondary,
      overlayColor: AppColors.secondary.withOpacity(0.2),
      valueIndicatorColor: AppColors.blue,
    ),

    // Dialog Theme
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.black54,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      contentTextStyle: TextStyle(color: Colors.white70, fontSize: 16),
    ),

    // Checkbox Theme
    checkboxTheme: const CheckboxThemeData(
      checkColor: WidgetStatePropertyAll(AppColors.primary),
      fillColor: WidgetStatePropertyAll(AppColors.secondary),
    ),

    // Radio Theme
    radioTheme: const RadioThemeData(
      fillColor: WidgetStatePropertyAll(AppColors.secondary),
      splashRadius: 20,
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.blue.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      labelStyle: const TextStyle(color: AppColors.secondary),
      deleteIconColor: AppColors.secondary,
    ),

    // Tab Bar Theme
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.secondary,
      unselectedLabelColor: Colors.white70,
      indicator: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: AppColors.secondary, width: 2)),
      ),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondary,
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: true,
    ),

    // SnackBar Theme
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.blue,
      contentTextStyle: TextStyle(color: Colors.white),
      actionTextColor: AppColors.secondary,
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      space: 10,
      thickness: 1,
      color: Colors.white24,
    ),

    // Page Route Theme
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
