import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/app_text_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: CustomDivider(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
          ),
          child: Text(
            'أو',
            style: TextStyles.semiBold16,
          ),
        ),
        Expanded(child: CustomDivider()),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFDDDFDF),
      thickness: 1,
      height: 0,
    );
  }
}
