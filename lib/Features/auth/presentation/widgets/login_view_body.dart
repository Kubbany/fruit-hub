import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/password_form_field.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/text_input_form_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/create_an_account.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/forgot_password.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/or_divider_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 24,
          ),
          const TextInputFormField(
            text: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          const PasswordFormField(
            text: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
          ),
          const ForgotPassword(),
          const SizedBox(
            height: 17,
          ),
          CustomButton(
            onPressed: () {},
            text: 'تسجيل دخول',
          ),
          const SizedBox(
            height: 33,
          ),
          const CreateAnAccount(),
          const SizedBox(
            height: 49,
          ),
          const OrDividerWidget(),
        ],
      ),
    );
  }
}
