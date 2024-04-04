import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class ElvatedBtnWidget extends StatelessWidget {
  const ElvatedBtnWidget(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 293,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8.0),
          backgroundColor: const Color(0xFF7BB3FE),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}
