import 'package:flutter/material.dart';
import 'package:bijak_assignment/screens/product_screen/product_screen.dart';
import 'package:bijak_assignment/screens/home_screen/home_screen.dart';
import 'package:bijak_assignment/utils/routes/routes_mapping.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case (Routes.home):
        page = const HomeScreen();
        break;

      case (Routes.product):
        page = const ProductScreen();
        break;

      default:
        page = const HomeScreen();
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return page;
      },
    );
  }
}
