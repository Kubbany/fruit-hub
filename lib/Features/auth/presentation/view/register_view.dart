import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_app_bar.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String routeName = AppStrings.registerView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'حساب جديد',
      ),

      body: const RegisterViewBody(),
    );
  }
}
