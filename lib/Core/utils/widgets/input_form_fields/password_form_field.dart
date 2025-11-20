import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/input_form_fields/text_field_style.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({super.key, required this.text, this.keyboardType});
  final String text;
  final TextInputType? keyboardType;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !visible,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      style: TextFieldStyle.inputStyle,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child: IconButton(
            onPressed: () {
              visible = !visible;
              setState(() {});
            },
            icon: Icon(
              visible ? Icons.visibility_off : Icons.visibility,
              size: 20,
              color: const Color(0xFFC9CECF),
            ),
          ),
        ),
        contentPadding: TextFieldStyle.contentPadding,
        hint: Text(
          widget.text,
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
