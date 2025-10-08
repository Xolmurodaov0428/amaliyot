import 'package:flutter/material.dart';
import '../../screens/home_screen.dart'; // misol uchun

class RouteName {
  static const String home = '/home';
  static const String login = '/login';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(builder: (_) => const Scaffold()
          // LoginScreen()
        );case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 – Route not found')),
          ),
        );
    }
  }
}
