import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

class TermsAndConditionsDialogue extends StatelessWidget {
  const TermsAndConditionsDialogue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyles.semiBold13.copyWith(color: const Color(0xFF949D9E)),
        children: [
          const TextSpan(text: 'من خلال إنشاء حساب، فإنك توافق على '),
          TextSpan(
            text: 'الشروط والأحكام الخاصة بنا',
            style: TextStyles.semiBold13.copyWith(color: const Color(0xFF2D9F5D)),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle شروط tap
              },
          ),
        ],
      ),
    );
  }
}
