import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/helper/on_generate_route.dart';
import 'package:fruit_hub/Features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
