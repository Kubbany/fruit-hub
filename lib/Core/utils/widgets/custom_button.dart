import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 48,
          vertical: 15,
        ),
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 54),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(
            Radius.circular(
              16,
            ),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: .w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
