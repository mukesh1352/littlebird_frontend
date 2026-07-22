import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Background
  static const background = Color(0xffF7F5F1);

  // Card
  static const card = Color(0xff171717);

  // Floating cards
  static const floating1 = Color(0x15000000);
  static const floating2 = Color(0x0A000000);

  // Input
  static const input = Color(0xff242424);

  // Google Button
  static const google = Color(0xff2C2C30);

  // Primary Button
  static const primary = Color(0xffF3EFE4);

  // Divider
  static const divider = Color(0xff3B3B3B);

  // Text
  static const subtitle = Color(0xffA4A4A4);

  static const footer = Color(0xff6D6D6D);

  static const blue = Color(0xff3396FF);
}

class AppSizes {
  AppSizes._();

  static const horizontal = 24.0;

  static const cardRadius = 34.0;

  static const buttonRadius = 18.0;

  static const inputRadius = 18.0;

  static const buttonHeight = 60.0;

  static const inputHeight = 60.0;
}

class AppShadow {
  AppShadow._();

  static List<BoxShadow> card = [
    BoxShadow(
      color: Colors.black.withValues(alpha: .18),
      blurRadius: 45,
      spreadRadius: 2,
      offset: const Offset(0, 18),
    ),
  ];
}