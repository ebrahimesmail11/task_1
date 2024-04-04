import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class TextLoginWidget extends StatelessWidget {
  const TextLoginWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: AppStyles.styleSemiBold40(context),
    );
  }
}
