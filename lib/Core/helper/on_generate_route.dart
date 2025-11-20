import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/view/login_view.dart';
import 'package:fruit_hub/Features/auth/presentation/view/register_view.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruit_hub/Features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const SplashView(),
      );

    case OnBoardingView.routeName:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnBoardingView(),
      );

    case LoginView.routeName:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const LoginView(),
      );

    case RegisterView.routeName:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const RegisterView(),
      );

    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: Text('No Route Defined For ${settings.name}'),
          ),
        ),
      );
  }
}
