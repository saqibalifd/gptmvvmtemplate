import 'package:get/get.dart';

import '../controllers/controllers_exports.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodoController());
    Get.lazyPut(() => UserProfileController());
  }
}
