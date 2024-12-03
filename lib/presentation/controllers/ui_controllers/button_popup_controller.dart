import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonPopupController extends GetxController {
  bool _isPressed = false;
  bool get isPressed => _isPressed;

  void handleTapDown(TapDownDetails details) {
    _isPressed = true;
    update();
  }

  void handleTapUp(TapUpDetails details, VoidCallback onTap) {
    _isPressed = false;
    update();
    onTap();
  }

  void handleTapCancel() {
    _isPressed = false;
    update();
  }
}
