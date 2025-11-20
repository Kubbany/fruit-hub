import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/password_form_field.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/text_input_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          TextInputFormField(
            text: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 16,
          ),
          PasswordFormField(
            text: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
