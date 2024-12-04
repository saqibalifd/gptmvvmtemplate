import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

// class ColorStyle {
//   final Color green;
//   final Color red;
//   final Color blue;
//   final Color yellow;

//   const ColorStyle({
//     required this.green,
//     required this.red,
//     required this.blue,
//     required this.yellow,
//   });
// }

// extension CustomColorStyle on ThemeData {
//   ColorStyle get colorStyle {
//     if (brightness == Brightness.light) {
//       return const ColorStyle(
//         green: Colors.green,
//         red: Colors.red,
//         yellow: Colors.yellow,
//         blue: Colors.blue,
//       );
//     } else {
//       return const ColorStyle(
//         green: Colors.lightGreen,
//         red: Colors.redAccent,
//         yellow: Colors.amber,
//         blue: Colors.blue,
//       );
//     }
//   }
// }

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
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: AppColors.secondary,
          fontSize: 32,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: AppColors.secondary,
          fontSize: 28,
          fontWeight: FontWeight.bold),
      titleSmall: TextStyle(
          color: AppColors.secondary,
          fontSize: 24,
          fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: AppColors.secondary, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
      bodySmall: TextStyle(color: Colors.black45, fontSize: 12),
      labelLarge: TextStyle(color: AppColors.secondary, fontSize: 14),
      labelMedium: TextStyle(color: Colors.black54, fontSize: 12),
      labelSmall: TextStyle(color: Colors.black45, fontSize: 10),
    ),

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
    textTheme: const TextTheme(
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
    ),

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
