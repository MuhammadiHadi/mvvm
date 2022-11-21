import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/AppRoutes.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/login_screen.dart';

class Routing {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.LoginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.HomeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Text("no page found"),
                ));
    }
  }
}
