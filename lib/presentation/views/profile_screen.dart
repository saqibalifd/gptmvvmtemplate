import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constant_imports.dart';

class ProfileScreen extends StatelessWidget {
  // ProfileScreen({super.key});

  final UserProfileController userProfileController =
      Get.put(UserProfileController());

  @override
  Widget build(BuildContext context) {
    userProfileController.fetchCurrentUser();
    print(
        ' we will print there hehheheheh ${userProfileController.thisUser.first.name}');
    final data = userProfileController.thisUser.first;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: AppColors.secondary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(data.imageUrl != ''
                      ? data.imageUrl
                      : AppImages.dummyProfileNetwork)),
              const SizedBox(height: 16),
              Text(
                data.name,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Text(
                data.email,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ));
  }
}
