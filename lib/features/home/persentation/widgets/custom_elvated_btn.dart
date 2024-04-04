import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElvatedBtn extends StatelessWidget {
  const CustomElvatedBtn(
      {super.key, this.onPressed, required this.icon, required this.text});
  final void Function()? onPressed;
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
      ),
      label: Text(text),
    );
  }
}
