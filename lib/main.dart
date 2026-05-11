import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routings/app_routers.dart';
import 'core/shared_pref/shared_pref.dart';
import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';
import 'supabase/supabase_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseServices.init();
  await SharedPref.init();
  await setupDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: LightTheme.theme,
          darkTheme: DarkTheme.theme,
          themeMode: ThemeMode.system,
          onGenerateRoute: AppRouters().generateRoute,
        );
      },
    );
  }
}