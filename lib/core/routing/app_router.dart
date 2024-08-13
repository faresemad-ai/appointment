import 'package:appointment/core/di/dependency_injection.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/features/home/ui/screens/homescreen.dart';
import 'package:appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment/features/login/ui/screens/loginscreen.dart';
import 'package:appointment/features/onboarding/onboarding.dart';
import 'package:appointment/features/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.SplashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
         case Routes.HomeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
