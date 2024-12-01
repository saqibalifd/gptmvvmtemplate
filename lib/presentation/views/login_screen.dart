import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constant_imports.dart';
import '../../core/routes/route_names.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.login),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: AppStrings.email),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: AppStrings.password),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Obx(() {
              return controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            controller.loginWithEmail(
                              emailController.text.trim(),
                              passwordController.text.trim(),
                            );
                          },
                          child: const Text(AppStrings.login),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.loginWithGoogle();
                          },
                          child: const Text(AppStrings.googleSignIn),
                        ),
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
    );
  }
}
