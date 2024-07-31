import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/features/login/ui/screens/loginscreen.dart';
import 'package:appointment/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("no routes"),
                  ),
                ));
    }
  }
}
