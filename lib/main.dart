import 'package:app_flutter_gps/config/router.dart';
import 'package:app_flutter_gps/core/constants/routes.dart';
import 'package:app_flutter_gps/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      initialRoute: splashScreenRoute,
    );
  }
}
