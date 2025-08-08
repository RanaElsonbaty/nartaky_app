import 'package:flutter/material.dart';
import 'package:nrtaky/core/routing/app_routing.dart';
import 'package:nrtaky/features/splash/presentation/splash_view.dart';

class AppRoutes {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
