import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingUtil {
  static void showLoading() {
    Get.dialog(
      Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
