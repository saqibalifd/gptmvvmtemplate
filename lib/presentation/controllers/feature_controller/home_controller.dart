import 'package:get/get.dart';
import '../../../data/model/user_model.dart';
import '../../../data/repositories/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  RxList<UserModel> users = <UserModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    isLoading.value = true;
    try {
      final userList = await _userRepository.fetchUsers();
      users.assignAll(userList);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
