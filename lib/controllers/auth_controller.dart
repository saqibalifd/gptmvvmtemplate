import 'package:get/get.dart';
import '../model/user_model.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepository = AuthRepository();
  final UserRepository _userRepository = UserRepository();

  Rxn<UserModel> currentUser = Rxn<UserModel>();

  Future<void> loginWithEmail(String email, String password) async {
    try {
      final user = await _authRepository.signInWithEmail(email, password);
      if (user != null) {
        currentUser.value = UserModel(
          uid: user.uid,
          email: user.email ?? '',
          name: user.displayName ?? 'No Name',
        );
        Get.offAllNamed('/home');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> signupWithEmail(
      String email, String password, String name) async {
    try {
      final user = await _authRepository.signUpWithEmail(email, password);
      if (user != null) {
        final newUser =
            UserModel(uid: user.uid, email: user.email!, name: name);
        await _userRepository.addUser(newUser);
        currentUser.value = newUser;
        Get.offAllNamed('/home');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      final user = await _authRepository.signInWithGoogle();
      if (user != null) {
        currentUser.value = UserModel(
          uid: user.uid,
          email: user.email ?? '',
          name: user.displayName ?? 'No Name',
        );
        Get.offAllNamed('/home');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> logout() async {
    try {
      await _authRepository.signOut();
      currentUser.value = null;
      Get.offAllNamed('/login'); // Redirect to login screen
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
