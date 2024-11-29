import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class SignupScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _authController.signupWithEmail(
                  emailController.text.trim(),
                  passwordController.text.trim(),
                  nameController.text.trim(),
                );
              },
              child: const Text("Sign Up"),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
