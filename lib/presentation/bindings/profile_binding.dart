import 'package:get/get.dart';

import '../controllers/controllers_exports.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(() => UserProfileController());
  }
}
