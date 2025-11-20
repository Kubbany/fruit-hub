import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_app_bar.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = AppStrings.loginView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'تسجيل دخول',
      ),
      body: const LoginViewBody(),
    );
  }
}
