import 'package:chatgpttemplate/controllers/feature_controller/user_profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(() => UserProfileController());
  }
}
