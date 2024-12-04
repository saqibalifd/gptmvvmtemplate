import 'dart:async';

import 'package:chatgpttemplate/core/animations/animation_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/constant_imports.dart';
import '../../../core/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(AppDurations.splash, () => dashboardManagement());
  }

  void dashboardManagement() {
    User? userCredential = FirebaseAuth.instance.currentUser;
    if (userCredential != null) {
      Get.toNamed(RouteNames.homeScreen);
    } else {
      Get.toNamed(RouteNames.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideAnimation(
          direction: AxisDirection.right,
          child: SizedBox(
            height: 50.h,
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
