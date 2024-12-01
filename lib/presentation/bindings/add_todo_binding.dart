import 'package:get/get.dart';

import '../controllers/controllers_exports.dart';

class AddTodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodoController());
  }
}
