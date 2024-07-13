import 'package:flutter/material.dart';
import 'package:bijak_assignment/screens/product_screen/product_screen.dart';
import 'package:bijak_assignment/screens/home_screen/home_screen.dart';
import 'package:bijak_assignment/utils/routes/routes_mapping.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case (Routes.home):
        page = const HomeScreen();
        break;

      case (Routes.product):
        final args = settings.arguments as Map<String, String>;
        final id = args['id'] ?? "";
        final name = args['name'] ?? "";

        page = ProductScreen(
          productId: id,
          name: name,
        );
        break;

      default:
        page = const HomeScreen();
    }

    return PageTransition(
      type: PageTransitionType.rightToLeft,
      child: page,
      curve: Curves.easeInOut,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
    );
  }
}
