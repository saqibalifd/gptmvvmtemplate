import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetUtil {
  static void showCustomBottomSheet(Widget widget) {
    Get.bottomSheet(
      widget,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }

  static void showLoadingBottomSheet() {
    Get.bottomSheet(
      Center(child: CircularProgressIndicator()),
      isDismissible: false,
      backgroundColor: Colors.transparent,
    );
  }

  static void hideBottomSheet() {
    if (Get.isBottomSheetOpen!) {
      Get.back();
    }
  }
}
