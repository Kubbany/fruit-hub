import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/password_form_field.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/text_input_form_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/auth_action_dialogue.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/terms_and_conditions.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 24,
                ),
                const TextInputFormField(
                  text: 'الاسم كامل',
                ),
                const SizedBox(
                  height: 16,
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
                const SizedBox(
                  height: 16,
                ),
                const TermsAndConditions(),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'إنشاء حساب جديد',
                ),
                const SizedBox(
                  height: 26,
                ),
                AuthActionDialogue(
                  dialouge: 'تمتلك حساب بالفعل؟ ',
                  actionDialouge: 'تسجيل دخول ',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
