import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/widgets/custom_check_box.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/terms_and_conditions_dialogue.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  late bool isTermsAccepted;

  @override
  void initState() {
    super.initState();
    isTermsAccepted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .start,
      children: <Widget>[
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChanged: (value) {
            isTermsAccepted = value;
            setState(() {});
          },
        ),
        const SizedBox(
          width: 16,
        ),
        const Expanded(
          child: TermsAndConditionsDialogue(),
        ),
      ],
    );
  }
}
