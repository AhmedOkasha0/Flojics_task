import 'package:flojics_task/authentication/presentation/screens/login_screen.dart';
import 'package:flojics_task/authentication/presentation/screens/register_screen.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flojics_task/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppStrings.intialRoute:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case AppStrings.homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppStrings.loginScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
    return null;
  }
}
