import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:flutter/material.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 20),
            Obx(() {
              return controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: () {
                        controller.signUpWithEmail(
                          nameController.text.trim(),
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      },
                      child: Text(AppStrings.signup),
                    );
            }),
          ],
        ),
      ),
    );
  }
}
