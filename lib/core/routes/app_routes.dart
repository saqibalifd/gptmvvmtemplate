import 'package:chatgpttemplate/core/routes/route_names.dart';
import 'package:chatgpttemplate/presentation/bindings/add_todo_binding.dart';
import 'package:chatgpttemplate/presentation/bindings/profile_binding.dart';
import 'package:chatgpttemplate/presentation/views/add_todo_screen.dart';
import 'package:chatgpttemplate/presentation/views/profile_screen.dart';
import 'package:chatgpttemplate/presentation/views/splash_screen.dart';
import 'package:get/get.dart';

import '../../presentation/bindings/auth_bindings.dart';
import '../../presentation/bindings/home_binding.dart';
import '../../presentation/views/home_screen.dart';
import '../../presentation/views/login_screen.dart';
import '../../presentation/views/signup_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteNames.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RouteNames.loginScreen,
          page: () => LoginScreen(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: RouteNames.signupScreen,
          page: () => SignupScreen(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: RouteNames.homeScreen,
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: RouteNames.addTodoScreen,
          page: () => AddTodoScreen(),
          binding: AddTodoBinding(),
        ),
        GetPage(
          name: RouteNames.profileScreen,
          page: () => ProfileScreen(),
          binding: ProfileBinding(),
        ),
      ];
}
