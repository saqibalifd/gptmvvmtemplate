import 'package:get/get.dart';
import '../model/user_model.dart';
import '../repositories/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  RxList<UserModel> users = RxList<UserModel>();
  RxBool isLoading = false.obs;

  Future<void> fetchUsers() async {
    isLoading.value = true;
    try {
      final fetchedUsers = await _userRepository.fetchUsers();
      users.assignAll(fetchedUsers);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
