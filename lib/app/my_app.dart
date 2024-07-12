import 'package:flutter/material.dart';
import 'package:bijak_assignment/utils/routes/app_routes.dart';
import 'package:bijak_assignment/utils/themes/themes.dart';
import 'package:bijak_assignment/screens/home_screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bijak Assignment',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: Themes.defaultTheme,
      home: const HomeScreen(),
    );
  }
}
