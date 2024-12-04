import 'package:get/get.dart';

import '../../../data/model/model_imports.dart';
import '../../../data/repositories/repositories_import.dart';

class UserProfileController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  RxBool isLoading = false.obs;
  RxList<UserModel> thisUser = <UserModel>[].obs;

  Future<void> addUser(
    String name,
    String email,
    String imageUrl,
  ) async {
    await _userRepository.addUser(name, email, imageUrl);
  }

  Future<void> fetchCurrentUser() async {
    isLoading.value = true;

    final fetchUser = await _userRepository.fetchUsers();
    thisUser.assignAll(fetchUser);
    isLoading.value = false;
  }
}

//   Future<void> updateUserProfile(String name, String email) async {
//     isLoading.value = true;
//     try {
//       // final user = currentUser.value;
//       if (user != null) {
//         final updatedUser =
//             UserModel(id: user.id, name: name, email: email, imageUrl: '');
//         await _userRepository.updateUser(updatedUser);
//         currentUser.value = updatedUser;
//         Get.snackbar('Success', 'Profile updated successfully!');
//       }
//     } catch (e) {
//       Get.snackbar('Error', e.toString());
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
