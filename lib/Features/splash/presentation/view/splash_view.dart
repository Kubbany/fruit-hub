import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/services/prefs.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Features/auth/presentation/view/login_view.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = AppStrings.splashView;

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewBody(),
    );
  }

  Future<Null> _executeNavigation() {
    return Future<Null>.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          bool skipOnBoarding = Prefs.getBool(AppStrings.skipOnBoarding);
          if (skipOnBoarding) {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
          }
        }
      },
    );
  }
}
