import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/assets.dart';

class SocialLoginEntity {
  final String icon, title;
  final VoidCallback onTap;

  SocialLoginEntity({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  static List<SocialLoginEntity> socialLogins = <SocialLoginEntity>[
    SocialLoginEntity(
      icon: Assets.imagesGoogleIcon,
      title: 'تسجيل بواسطة جوجل',
      onTap: () {},
    ),
    SocialLoginEntity(
      icon: Assets.imagesApplIcon,
      title: 'تسجيل بواسطة أبل',
      onTap: () {},
    ),
    SocialLoginEntity(
      icon: Assets.imagesFacebookIcon,
      title: 'تسجيل بواسطة فيسبوك',
      onTap: () {},
    ),
  ];
}
