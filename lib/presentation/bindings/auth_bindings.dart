import 'package:get/get.dart';

import '../controllers/controllers_exports.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
