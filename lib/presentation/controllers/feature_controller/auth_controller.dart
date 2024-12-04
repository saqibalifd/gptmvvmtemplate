import 'package:chatgpttemplate/core/routes/route_names.dart';
import 'package:chatgpttemplate/core/utils/toast_util.dart';
import 'package:chatgpttemplate/presentation/controllers/controllers_exports.dart';
import 'package:get/get.dart';

import '../../../data/repositories/repositories_import.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepository = AuthRepository();
  final UserProfileController _userProfileController =
      Get.put(UserProfileController());

  RxBool isLoading = false.obs;

  Future<void> loginWithEmail(String email, String password) async {
    isLoading.value = true;
    try {
      final user = await _authRepository.loginWithEmail(email, password);
      if (user != null) {
        Get.offAllNamed(RouteNames.homeScreen);
      }
    } catch (e) {
      ToastUtil.showToast('Error ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signUpWithEmail(
      String name, String email, String password) async {
    isLoading.value = true;
    try {
      final user = await _authRepository.signUpWithEmail(email, password);
      if (user != null) {
        await _userProfileController.addUser(name, email, '');
        Get.offAllNamed(RouteNames.homeScreen);
      }
    } catch (e) {
      ToastUtil.showToast('Error ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginWithGoogle() async {
    isLoading.value = true;
    try {
      final user = await _authRepository.loginWithGoogle();
      if (user != null) {
        Get.offAllNamed(RouteNames.homeScreen);
      }
    } catch (e) {
      ToastUtil.showToast('Error ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    isLoading.value = true;
    try {
      await _authRepository
          .logout(); // Assuming the AuthRepository has a logout method
      Get.offAllNamed(
          RouteNames.loginScreen); // Navigate to the login screen after logout
      ToastUtil.showToast('Logged out successfully');
    } catch (e) {
      ToastUtil.showToast('Error ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }
}
