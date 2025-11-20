import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String routeName = AppStrings.registerView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 19,
          ),
        ),
        title: const Text(
          'تسجيل دخول',
          style: TextStyles.bold19,
        ),
        centerTitle: true,
      ),

      body: const RegisterViewBody(),
    );
  }
}
