import 'package:chatgpttemplate/core/constants/constant_imports.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String labelText;
  final String iconPath;

  IconButtonWidget({
    required this.onPressed,
    required this.labelText,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(
        labelText,
        style: TextStyle(color: AppColors.primary),
      ),
      icon: Image.asset(
        iconPath,
        height: 20, // Adjust height as needed
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue, // Button color
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // No border radius
        ),
      ),
    );
  }
}
