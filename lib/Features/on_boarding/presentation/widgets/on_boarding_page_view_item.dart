import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/services/prefs.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';
import 'package:fruit_hub/Core/utils/constants/strings.dart';
import 'package:fruit_hub/Features/auth/presentation/view/login_view.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_item_entity.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.onBoardingItem,
    required this.index,
  });
  final OnBoardingItemEntity onBoardingItem;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: .infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SvgPicture.asset(
                  onBoardingItem.backgroundImage,
                  fit: .fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  onBoardingItem.image,
                ),
              ),
              Visibility(
                visible: index == 0 ? true : false,
                child: Padding(
                  padding: const .symmetric(
                    horizontal: 16,
                    vertical: 32,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: TextButton(
                      onPressed: () {
                        Prefs.setBool(AppStrings.skipOnBoarding, true);
                        Navigator.pushReplacementNamed(context, LoginView.routeName);
                      },
                      child: Text(
                        'تخط',
                        style: TextStyles.regular13.copyWith(
                          color: const Color(0xFF949D9E),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64.0,
        ),
        onBoardingItem.title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const .symmetric(
            horizontal: 37,
          ),
          child: Text(
            onBoardingItem.subtitle,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5556),
            ),
            textAlign: .center,
          ),
        ),
      ],
    );
  }
}
