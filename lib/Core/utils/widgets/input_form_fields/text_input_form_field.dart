import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/text_field_style.dart';

class TextInputFormField extends StatelessWidget {
  const TextInputFormField({super.key, required this.text, this.keyboardType});
  final String text;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      style: TextFieldStyle.inputStyle,
      decoration: InputDecoration(
        contentPadding: TextFieldStyle.contentPadding,
        hint: Text(
          text,
          style: TextFieldStyle.hintStyle,
        ),
        fillColor: TextFieldStyle.fillColor,
        filled: TextFieldStyle.filled,

        enabledBorder: TextFieldStyle.border,
        border: TextFieldStyle.border,
        focusedBorder: TextFieldStyle.border,
      ),
    );
  }
}
