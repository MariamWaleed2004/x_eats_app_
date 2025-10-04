import 'package:flutter/material.dart';

class AppSizes {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class AppColors {
  static const Color NeonGreen = Color(0xFF4CAF00);
  static const Color darkGreen = Color(0xFF3B8A00);
  static const Color grey = Color(0xFF999999);
  static const Color lightGrey = Color(0XFFC7C7C7);
  static const Color lightGrey_ = Color(0x00000017);
  static const Color Black = Color(0xFF000000);
  static const Color lightGreen = Color(0xFF21CD3E);
  static const Color lightGrey2 = Color(0xFFEDEDED);
  static const Color NeonGreen2 = Color(0xFF66CC00);
  static const Color NeonGreen500 = Color(0xFF7FFF00);
  static const Color lightGreen500 = Color(0xFF59BA8B);
  static const Color lightGreen50 = Color(0xFFF4FFF6);
}

class ScreenConst {
  static const String signInScreen = 'signInScreen';
  static const String emailScreen = 'emailScreen';
  static const String passwordScreen = 'passwordScreen';
  static const String phoneNumberScreen = 'phoneNumberScreen';
  static const String verifyScreen = 'verifyScreen';
  static const String nameScreen = 'nameScreen';
  static const String restaurantScreen = 'restaurantScreen';
  static const String mealsScreen = 'mealsScreen';
}
