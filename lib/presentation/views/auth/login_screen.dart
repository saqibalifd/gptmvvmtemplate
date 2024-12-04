import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/constant_imports.dart';
import '../../../core/routes/route_names.dart';
import '../../controllers/controllers_exports.dart';
import '../../widgets/widgets_exports.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.login),
        ),
        body: Padding(
          padding: EdgeInsets.all(AppSizes.paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: AppStrings.email),
              ),
              TextField(
                controller: passwordController,
                decoration:
                    const InputDecoration(labelText: AppStrings.password),
                obscureText: true,
              ),
              SizedBox(height: 50.h),
              Obx(() {
                return controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : Column(
                        children: [
                          MainButtonWidget(
                            buttonTitle: AppStrings.login,
                            onTap: () => _onEmailLoginTap(),
                          ),
                          SizedBox(height: 20.h),
                          IconButtonWidget(
                              onPressed: () => _onGoogleLoginTap(),
                              labelText: AppStrings.continueWithGoogle,
                              iconPath: AppImages.googleLogo),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(RouteNames.signupScreen);
                            },
                            child: const Text(AppStrings.signup),
                          ),
                        ],
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _onEmailLoginTap() {
    controller.loginWithEmail(
      emailController.text.trim(),
      passwordController.text.trim(),
    );
  }

  void _onGoogleLoginTap() {
    controller.loginWithGoogle();
  }
}
