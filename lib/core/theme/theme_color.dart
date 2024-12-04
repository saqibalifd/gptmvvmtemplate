import 'package:flutter/material.dart';

class ColorStyle {
  final Color detailBackground;
  final Color red;
  final Color blue;
  final Color yellow;

  const ColorStyle({
    required this.detailBackground,
    required this.red,
    required this.blue,
    required this.yellow,
  });
}

extension CustomColorStyle on ThemeData {
  ColorStyle get colorStyle {
    if (brightness == Brightness.light) {
      return const ColorStyle(
        detailBackground: Colors.green,
        red: Colors.red,
        yellow: Colors.yellow,
        blue: Colors.blue,
      );
    } else {
      return const ColorStyle(
        detailBackground: Colors.pink,
        red: Colors.redAccent,
        yellow: Colors.amber,
        blue: Colors.blue,
      );
    }
  }
}
