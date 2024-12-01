import 'package:chatgpttemplate/core/routes/route_names.dart';
import 'package:get/get.dart';
import '../../../data/model/user_model.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../data/repositories/user_repository.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepository = AuthRepository();
  final UserRepository _userRepository = UserRepository();

  RxBool isLoading = false.obs;

  Future<void> loginWithEmail(String email, String password) async {
    isLoading.value = true;
    try {
      final user = await _authRepository.loginWithEmail(email, password);
      if (user != null) {
        Get.offAllNamed(RouteNames.homeScreen);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
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
        await _userRepository.addUser(
          UserModel(id: user.uid, name: name, email: email),
        );
        Get.offAllNamed(RouteNames.homeScreen);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
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
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
