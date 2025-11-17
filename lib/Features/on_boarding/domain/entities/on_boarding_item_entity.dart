import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/assets.dart';

class OnBoardingItemEntity {
  final String backgroundImage, image, subtitle;
  final Widget title;

  const OnBoardingItemEntity({
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  static const List<OnBoardingItemEntity> items = <OnBoardingItemEntity>[
    OnBoardingItemEntity(
      backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
      image: Assets.imagesPageViewItem1Image,
      subtitle:
          'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      title: Row(
        children: <Widget>[
          Text('مرحبًا بك في'),
          Text(' HUB'),
          Text('Fruit'),
        ],
      ),
    ),
    OnBoardingItemEntity(
      backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
      image: Assets.imagesPageViewItem2Image,
      subtitle:
          'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
      title: Text('ابحث وتسوق'),
    ),
  ];
}
