import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flojics_task/scr/authentication/presentation/screens/login_screen.dart';
import 'package:flojics_task/scr/authentication/presentation/screens/register_screen.dart';
import 'package:flojics_task/scr/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppStrings.intialRoute:
        return MaterialPageRoute(builder: (context) =>  RegisterScreen());
      case AppStrings.homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppStrings.loginScreenRoute:
        return MaterialPageRoute(
          builder: (context) =>  LoginScreen(),
        );
    }
    return null;
  }
}
