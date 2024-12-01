import 'package:get/get.dart';
import '../../data/model/user_model.dart';
import '../../data/repositories/user_repository.dart';

class UserProfileController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  RxBool isLoading = false.obs;
  Rx<UserModel?> currentUser = Rx<UserModel?>(null);

  @override
  void onInit() {
    super.onInit();
    _loadCurrentUser();
  }

  Future<void> _loadCurrentUser() async {
    isLoading.value = true;
    try {
      final user = await _userRepository.getUserById('Az1MBYfkttkEllcHoTLx');
      // ignore: unnecessary_null_comparison
      if (user != null) {
        final userData =
            await _userRepository.getUserById('Az1MBYfkttkEllcHoTLx');
        currentUser.value = userData;
      }
      // final user = await _userRepository.getUserById(user.uid);
      // if (user != null) {
      //   final userData = await _userRepository.getUserById(user.uid);
      //   currentUser.value = userData;
      // }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateUserProfile(String name, String email) async {
    isLoading.value = true;
    try {
      final user = currentUser.value;
      if (user != null) {
        final updatedUser = UserModel(
          id: user.id,
          name: name,
          email: email,
        );
        await _userRepository.updateUser(updatedUser);
        currentUser.value = updatedUser;
        Get.snackbar('Success', 'Profile updated successfully!');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
