import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/on_boarding/presentation/widgets/on_boarding_page_view_builder.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Expanded(
          child: OnBoardingPageViewBuilder(),
        ),
      ],
    );
  }
}
