import 'package:get/get.dart';

import '../../presentation/bindings/auth_bindings.dart';
import '../../presentation/bindings/home_binding.dart';
import '../../presentation/views/home_screen.dart';
import '../../presentation/views/login_screen.dart';
import '../../presentation/views/signup_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignupScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
