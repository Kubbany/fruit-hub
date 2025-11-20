import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

class AuthActionDialogue extends StatelessWidget {
  const AuthActionDialogue({
    super.key,
    required this.dialouge,
    required this.actionDialouge,
    this.onTap,
  });
  final String dialouge, actionDialouge;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: dialouge,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            text: actionDialouge,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
