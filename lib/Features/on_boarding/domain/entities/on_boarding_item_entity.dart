import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/assets.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';

class OnBoardingItemEntity {
  final String backgroundImage, image, subtitle;
  final Widget title;

  const OnBoardingItemEntity({
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  static List<OnBoardingItemEntity> items = <OnBoardingItemEntity>[
    OnBoardingItemEntity(
      backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
      image: Assets.imagesPageViewItem1Image,
      subtitle:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      title: Text.rich(
        TextSpan(
          children: <TextSpan>[
            const TextSpan(text: 'مرحباً بك في ', style: TextStyles.bold23),
            TextSpan(
              text: 'Fruit',
              style: TextStyles.bold23.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            TextSpan(
              text: 'HUB',
              style: TextStyles.bold23.copyWith(
                color: const Color(0xFFF4A91F),
              ),
            ),
          ],
        ),
      ),
    ),
    const OnBoardingItemEntity(
      backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
      image: Assets.imagesPageViewItem2Image,
      subtitle:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
      title: Text(
        'ابحث وتسوق',
        style: TextStyles.bold23,
      ),
    ),
  ];
}
