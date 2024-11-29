import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // Fetch Firestore data on load
    _homeController.fetchUsers();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _authController.logout();
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
      body: Obx(() {
        if (_homeController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (_homeController.users.isEmpty) {
          return const Center(child: Text("No users found."));
        }

        return ListView.builder(
          itemCount: _homeController.users.length,
          itemBuilder: (context, index) {
            final user = _homeController.users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        );
      }),
    );
  }
}
