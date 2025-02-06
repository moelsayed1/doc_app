import 'package:doc_app/Core/di/dependency_injection.dart';
import 'package:doc_app/Core/routing/routes.dart';
import 'package:doc_app/Features/home/ui/home_screen.dart';
import 'package:doc_app/Features/login/logic/login_cubit.dart';
import 'package:doc_app/Features/login/ui/login_screen.dart';
import 'package:doc_app/Features/onboarding/onboarding_screen.dart';
import 'package:doc_app/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:doc_app/Features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: LoginScreen(),
            ));
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: SignupScreen(),
            ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
