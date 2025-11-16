import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const SplashView(),
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
