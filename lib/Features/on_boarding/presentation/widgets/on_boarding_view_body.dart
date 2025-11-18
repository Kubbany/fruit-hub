import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_dots_indicator.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_item_entity.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/on_boarding_page_view_builder.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(
      () {
        setState(
          () {
            currentIndex = _pageController.page!.round();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: OnBoardingPageViewBuilder(
            pageController: _pageController,
          ),
        ),
        CustomDotsIndicator(
          dotsCount: OnBoardingItemEntity.items.length,
          activeColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withAlpha(127),
          margin: 5,
          size: 11,
          currentPage: currentIndex,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 29,
            bottom: 43,
          ),
          child: Visibility(
            visible: currentIndex == 1,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: CustomButton(
              onPressed: () {},
              text: 'ابدأ الآن',
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
