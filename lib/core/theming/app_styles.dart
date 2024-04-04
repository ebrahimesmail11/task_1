import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleSemiBold48(context) {
    return const TextStyle(
      color: Color(0xFF4A4A4A),
      fontSize: 48,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold40(context) {
    return const TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular16(context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular32(context) {
    return const TextStyle(
      color: Color(0xFF4F4F4F),
      fontSize: 32,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return const TextStyle(
      color: Color(0xFF4F4F4F),
      fontSize: 32,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }
}
