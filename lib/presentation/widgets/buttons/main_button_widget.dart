import 'package:chatgpttemplate/core/constants/constant_imports.dart';
import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/utils_imports.dart';

class MainButtonWidget extends StatefulWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  final bool isFocus;
  final bool isLoading;

  MainButtonWidget({
    super.key,
    required this.buttonTitle,
    required this.onTap,
    this.isFocus = true,
    this.isLoading = false,
  });

  @override
  _MainButtonWidgetState createState() => _MainButtonWidgetState();
}

class _MainButtonWidgetState extends State<MainButtonWidget> {
  late ButtonPopupController buttonPopupController;
  late String uniqueTag; // Unique identifier for each controller instance

  @override
  void initState() {
    super.initState();
    uniqueTag = UniqueKey().toString();
    buttonPopupController = Get.put(ButtonPopupController(), tag: uniqueTag);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonPopupController>(
      init: buttonPopupController,
      tag: uniqueTag, // Use the unique tag here
      builder: (controller) {
        return GestureDetector(
          onTapDown: widget.isLoading || widget.isFocus == false
              ? null
              : controller.handleTapDown,
          onTapUp: widget.isLoading || widget.isFocus == false
              ? null
              : (details) => controller.handleTapUp(details, widget.onTap),
          onTapCancel: widget.isLoading || widget.isFocus == false
              ? null
              : controller.handleTapCancel,
          child: Stack(
            children: [
              AnimatedScale(
                scale: controller.isPressed ? 0.95 : 1.0,
                duration: const Duration(milliseconds: 100),
                child: Container(
                  height: 60.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: widget.isLoading
                        ? LoadingFunction.mainButtonLoading()
                        : Text(
                            widget.buttonTitle,
                            style: const TextStyle(color: AppColors.primary),
                            // style: AppTextStyle.buttonPrimary.copyWith(
                            //   color: themeController
                            //       .currentTheme.colors.primaryColor,
                            // ),
                          ),
                  ),
                ),
              ),
              if (!widget.isFocus)
                AnimatedScale(
                  scale: controller.isPressed ? 0.95 : 1.0,
                  duration: const Duration(milliseconds: 100),
                  child: Container(
                    height: 60.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    Get.delete<ButtonPopupController>(
        tag: uniqueTag); // Clean up with the same unique tag
    super.dispose();
  }
}
