import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {},
        child: Text(
          'نسيت كلمة المرور؟',
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFF2D9F5D),
          ),
        ),
      ),
    );
  }
}
