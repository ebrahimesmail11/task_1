import 'package:flutter/material.dart';
import 'package:pro_mina/core/theming/app_styles.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      textAlign: TextAlign.center,
      style: AppStyles.styleSemiBold48(context),
    ));
  }
}
