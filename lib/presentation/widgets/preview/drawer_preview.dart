import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constant_imports.dart';
import '../../controllers/controllers_exports.dart';

class CustomDrawer extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  // final UserProfileController _userProfileController =
  //     Get.put(UserProfileController());
  @override
  Widget build(BuildContext context) {
    final UserProfileController _userProfileController = Get.find();
    _userProfileController.fetchCurrentUser();
    final data = _userProfileController.thisUser.first;
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(data.name),
            accountEmail: Text(data.email),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(data.imageUrl),
              // child: Text(data.email),
              backgroundColor: AppColors.blue,
            ),
          ),
          // ListTile(
          //   leading: Icon(AppIcons.setting),
          //   title: Text('Setting'),
          //   // onTap: () => Get.toNamed(RouteNames.profileScreen),
          // ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              _authController.logout();
            },
          ),
        ],
      ),
    );
  }
}
