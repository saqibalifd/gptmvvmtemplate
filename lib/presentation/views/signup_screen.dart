import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:chatgpttemplate/presentation/widgets/buttons/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constants/constant_imports.dart';

class SignupScreen extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.signup),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: AppStrings.name),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: AppStrings.email),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: AppStrings.password),
              obscureText: true,
            ),
            SizedBox(height: 50.h),
            Obx(() {
              return controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : MainButtonWidget(
                      buttonTitle: 'Signup',
                      onTap: () => _onSignupTap(),
                    );
            }),
          ],
        ),
      ),
    );
  }

  void _onSignupTap() {
    controller.signUpWithEmail(
      nameController.text.trim(),
      emailController.text.trim(),
      passwordController.text.trim(),
    );
  }
}
