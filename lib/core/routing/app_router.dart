import 'package:flutter/material.dart';
import '../../features/secure_access/presentation/screens/secure_access_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.secureAccessScreen:
        return MaterialPageRoute(builder: (_) => const SecureAccessScreen());

      default:
        return null;
    }
  }
}
