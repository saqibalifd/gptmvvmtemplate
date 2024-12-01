import 'package:get/get.dart';
import '../../controllers/feature_controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
