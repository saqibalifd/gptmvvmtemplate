import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _storage = GetStorage();
  final _key = 'isDarkMode';

  // Check if the user prefers dark mode
  bool isDarkMode() {
    return _storage.read(_key) ?? false;
  }

  // Save the theme mode
  void saveThemeMode(bool isDarkMode) {
    _storage.write(_key, isDarkMode);
  }

  // Get the current theme mode
  ThemeMode get themeMode => isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  // Toggle between light and dark modes
  void switchTheme() {
    Get.changeThemeMode(isDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isDarkMode());
  }
}
