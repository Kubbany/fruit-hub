import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/on_boarding/domain/entities/on_boarding_item_entity.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({super.key, required this.onBoardingItem, required this.index});
  final OnBoardingItemEntity onBoardingItem;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SvgPicture.asset(
                  onBoardingItem.backgroundImage,
                  fit: BoxFit.fill,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 32,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'تخط',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
