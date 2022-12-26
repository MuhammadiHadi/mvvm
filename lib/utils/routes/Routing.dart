import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/AppRoutes.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/login_screen.dart';
import 'package:mvvm/view/signup/signup_view.dart';

class Routing {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.LoginScreen:
        return MaterialPageRoute(builder: (_) => LoginView());
      case AppRoutes.HomeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.SignupView:
        return MaterialPageRoute(builder: (_) => SignupView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Text("no page found"),
                ));
    }
  }
}
