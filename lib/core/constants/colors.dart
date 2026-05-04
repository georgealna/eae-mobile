import 'package:flutter/material.dart';

class AppColors {
  /// Toggle for dark / light mode
  static bool isDarkMode = false;

  // --- Primary (light base #0A192F) ---
  static const Color _primaryLight = Color(0xFF0A192F);
  static Color get primaryColor1 =>
      Color.lerp(Colors.white, _primaryLight, 0.95)!; // very light
  static Color get primaryColor2 =>
      Color.lerp(Colors.white, _primaryLight, 0.8)!;
  static Color get primaryColor3 =>
      Color.lerp(Colors.white, _primaryLight, 0.6)!;
  static Color get primaryColor4 =>
      Color.lerp(Colors.white, _primaryLight, 0.4)!;
  static Color get primaryColor5 =>
      Color.lerp(Colors.white, _primaryLight, 0.2)!;
  static Color get primaryColor6 => _primaryLight; // base
  static Color get primaryColor7 =>
      Color.lerp(Colors.black, _primaryLight, 0.08)!; // slightly darker
  static Color get primaryColor8 =>
      Color.lerp(Colors.black, _primaryLight, 0.18)!;
  static Color get primaryColor9 =>
      Color.lerp(Colors.black, _primaryLight, 0.28)!;
  static Color get primaryColor10 =>
      Color.lerp(Colors.black, _primaryLight, 0.4)!; // darkest

  // --- Secondary (base #14B8A6) ---
  static const Color _secondaryLight = Color(0xFF14B8A6);
  static Color get secondaryColor1 =>
      Color.lerp(Colors.white, _secondaryLight, 0.95)!;
  static Color get secondaryColor2 =>
      Color.lerp(Colors.white, _secondaryLight, 0.8)!;
  static Color get secondaryColor3 =>
      Color.lerp(Colors.white, _secondaryLight, 0.6)!;
  static Color get secondaryColor4 =>
      Color.lerp(Colors.white, _secondaryLight, 0.4)!;
  static Color get secondaryColor5 =>
      Color.lerp(Colors.white, _secondaryLight, 0.2)!;
  static Color get secondaryColor6 => _secondaryLight;
  static Color get secondaryColor7 =>
      Color.lerp(Colors.black, _secondaryLight, 0.08)!;
  static Color get secondaryColor8 =>
      Color.lerp(Colors.black, _secondaryLight, 0.18)!;
  static Color get secondaryColor9 =>
      Color.lerp(Colors.black, _secondaryLight, 0.28)!;
  static Color get secondaryColor10 =>
      Color.lerp(Colors.black, _secondaryLight, 0.4)!;

  // --- Tertiary (base #64748B) ---
  static const Color _tertiaryLight = Color(0xFF64748B);
  static Color get tertiaryColor1 =>
      Color.lerp(Colors.white, _tertiaryLight, 0.95)!;
  static Color get tertiaryColor2 =>
      Color.lerp(Colors.white, _tertiaryLight, 0.8)!;
  static Color get tertiaryColor3 =>
      Color.lerp(Colors.white, _tertiaryLight, 0.6)!;
  static Color get tertiaryColor4 =>
      Color.lerp(Colors.white, _tertiaryLight, 0.4)!;
  static Color get tertiaryColor5 =>
      Color.lerp(Colors.white, _tertiaryLight, 0.2)!;
  static Color get tertiaryColor6 => _tertiaryLight;
  static Color get tertiaryColor7 =>
      Color.lerp(Colors.black, _tertiaryLight, 0.08)!;
  static Color get tertiaryColor8 =>
      Color.lerp(Colors.black, _tertiaryLight, 0.18)!;
  static Color get tertiaryColor9 =>
      Color.lerp(Colors.black, _tertiaryLight, 0.28)!;
  static Color get tertiaryColor10 =>
      Color.lerp(Colors.black, _tertiaryLight, 0.4)!;

  // --- Neutral (base #F8FAFC) ---
  static const Color _neutralLight = Color(0xFFF8FAFC);
  static Color get neutralColor1 =>
      Color.lerp(Colors.white, _neutralLight, 0.95)!;
  static Color get neutralColor2 =>
      Color.lerp(Colors.white, _neutralLight, 0.8)!;
  static Color get neutralColor3 =>
      Color.lerp(Colors.white, _neutralLight, 0.6)!;
  static Color get neutralColor4 =>
      Color.lerp(Colors.white, _neutralLight, 0.4)!;
  static Color get neutralColor5 =>
      Color.lerp(Colors.white, _neutralLight, 0.2)!;
  static Color get neutralColor6 => _neutralLight;
  static Color get neutralColor7 =>
      Color.lerp(Colors.black, _neutralLight, 0.08)!;
  static Color get neutralColor8 =>
      Color.lerp(Colors.black, _neutralLight, 0.18)!;
  static Color get neutralColor9 =>
      Color.lerp(Colors.black, _neutralLight, 0.28)!;
  static Color get neutralColor10 =>
      Color.lerp(Colors.black, _neutralLight, 0.4)!;

  // Public active color getters that switch by `isDarkMode`
  static Color get primaryColor => isDarkMode ? primaryColor10 : _primaryLight;
  static Color get secondaryColor =>
      isDarkMode ? secondaryColor10 : _secondaryLight;
  static Color get tertiaryColor =>
      isDarkMode ? tertiaryColor10 : _tertiaryLight;
  static Color get neutralColor => isDarkMode ? neutralColor10 : _neutralLight;

  // --- Compatibility / legacy getters (map old names to new palette) ---
  static Color get background => neutralColor;
  static Color get primary => primaryColor;
  static Color get whiteColor => neutralColor;
  static Color get darkGreyColor => tertiaryColor9;
  static Color get greyColor => tertiaryColor5;
  static Color get border => tertiaryColor7;
  static Color get surface => neutralColor;
  static Color get surfaceSoft => neutralColor4;
  static Color get backGroundAppBar => primaryColor;
  static Color get textPrimary =>
      isDarkMode ? Color(0xFFF1F5F9) : Color(0xFF111111);
  // Legacy constants still used across the codebase
  static const Color white = Color(0xFFFFFFFF);
  static Color get whiteLaight => white;
  static const Color redWarring = Color(0xffBF0000);
  static const Color orangeLowInStock = Color(0xffA64200);
  static const Color greenGood = Color(0xff007C27);
}
