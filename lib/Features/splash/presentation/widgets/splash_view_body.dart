import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/assets.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .stretch,
      children: <Widget>[
        SvgPicture.asset(
          alignment: AlignmentDirectional.topStart,
          Assets.imagesPlant,
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
