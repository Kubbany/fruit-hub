import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/assets.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            ),
            borderRadius: const BorderRadiusGeometry.all(
              Radius.circular(8),
            ),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(
                  Assets.imagesCheck,
                ),
              )
            : null,
      ),
    );
  }
}
