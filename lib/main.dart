import 'package:chatgpttemplate/core/theme/theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/constants/app_strings.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/theme_service.dart';
import 'presentation/bindings/auth_bindings.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize ThemeService
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = ThemeService();

    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
              title: AppStrings.appName,
              darkTheme: CustomTheme.darkTheme,
              theme: CustomTheme.lightTheme,
              themeMode: themeService.themeMode,
              debugShowCheckedModeBanner: false,
              initialBinding: AuthBinding(),
              getPages: AppRoutes.appRoutes());
        });
  }
}
