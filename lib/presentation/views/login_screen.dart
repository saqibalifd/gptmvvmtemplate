import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/app_strings.dart';
import '../controllers/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.login),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: AppStrings.email),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: AppStrings.password),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Obx(() {
              return controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            controller.loginWithEmail(
                              emailController.text.trim(),
                              passwordController.text.trim(),
                            );
                          },
                          child: Text(AppStrings.login),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.loginWithGoogle();
                          },
                          child: Text(AppStrings.googleSignIn),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/signup');
                          },
                          child: Text(AppStrings.signup),
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
