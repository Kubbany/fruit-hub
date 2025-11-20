import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

abstract class TextFieldStyle {
  static const hintStyle = TextStyle(
    color: Color(0xFF949D9E),
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static const filled = true;

  static const fillColor = Color(0xFFF9FAFA);

  static const inputStyle = TextStyles.semiBold16;

  static const contentPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 17,
  );

  static const OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFE6E9EA),
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(4),
    ),
  );
}
