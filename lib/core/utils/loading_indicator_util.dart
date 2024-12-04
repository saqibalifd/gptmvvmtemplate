import 'package:chatgpttemplate/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingFunction {
  // Getting the theme controller

  // Static method for rotating dots animation
  static Widget mainButtonLoading() {
    return LoadingAnimationWidget.fourRotatingDots(
      color: AppColors.primary,
      size: 40.h,
    );
  }

  // Static method for twinkle animation
  static Widget simpleLoading() {
    return LoadingAnimationWidget.fourRotatingDots(
      color: AppColors.primary,
      size: 100.h,
    );
  }
}
