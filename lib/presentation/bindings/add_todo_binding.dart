import 'package:chatgpttemplate/controllers/feature_controller/todo_controller.dart';
import 'package:get/get.dart';

class AddTodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodoController());
  }
}
