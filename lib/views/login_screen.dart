import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                await _authController.loginWithEmail(
                  emailController.text.trim(),
                  passwordController.text.trim(),
                );
              },
              child: const Text("Login"),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.login),
              label: const Text("Login with Google"),
              onPressed: () async {
                await _authController.loginWithGoogle();
              },
            ),
            TextButton(
              onPressed: () {
                Get.to(() => SignupScreen());
              },
              child: const Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
