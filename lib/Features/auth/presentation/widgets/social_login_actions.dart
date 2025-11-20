import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Features/auth/domain/entities/social_login_entity.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginActions extends StatelessWidget {
  const SocialLoginActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: List.generate(
        SocialLoginEntity.socialLogins.length,
        (index) {
          return SizedBox(
            width: .infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                side: const BorderSide(
                  width: 1,
                  color: Color(0xFFDCDEDE),
                ),
              ),
              onPressed: SocialLoginEntity.socialLogins[index].onTap,
              child: ListTile(
                visualDensity: const VisualDensity(
                  vertical: VisualDensity.minimumDensity,
                ),
                leading: SvgPicture.asset(
                  SocialLoginEntity.socialLogins[index].icon,
                ),
                title: Text(
                  SocialLoginEntity.socialLogins[index].title,
                  style: TextStyles.semiBold16,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
