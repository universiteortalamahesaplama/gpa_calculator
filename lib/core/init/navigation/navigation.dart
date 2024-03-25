import 'package:flutter/material.dart';
import 'package:gpa_calculator/feature/home.dart';
import 'package:gpa_calculator/product/utility/constants/navigation_constans.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.defaultPage:
        return normalNavigate(const Home(), NavigationConstants.defaultPage);

      default:
        return MaterialPageRoute(
          builder: (context) => const Home(), //TODO: error page eklenecek
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
