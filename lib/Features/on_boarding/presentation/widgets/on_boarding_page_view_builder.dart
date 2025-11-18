import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_item_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/on_boarding_page_view_item.dart';

class OnBoardingPageViewBuilder extends StatelessWidget {
  const OnBoardingPageViewBuilder({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (BuildContext context, int index) => OnBoardingPageViewItem(
        onBoardingItem: OnBoardingItemEntity.items[index],
        index: index,
      ),
      itemCount: OnBoardingItemEntity.items.length,
    );
  }
}
