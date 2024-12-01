import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constant_imports.dart';

class ProfileScreen extends StatelessWidget {
  final UserProfileController _userProfileController =
      Get.find<UserProfileController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: AppColors.primary,
      ),
      body: Obx(() {
        if (_userProfileController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final user = _userProfileController.currentUser.value;
        if (user == null) {
          return Center(child: Text('No user data found.'));
        }

        // Initialize controllers with user data
        nameController.text = user.name;
        emailController.text = user.email;

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final name = nameController.text.trim();
                  final email = emailController.text.trim();
                  if (name.isEmpty || email.isEmpty) {
                    Get.snackbar('Error', 'Name and email cannot be empty.');
                    return;
                  }
                  _userProfileController.updateUserProfile(name, email);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
                child: Text('Update Profile'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
