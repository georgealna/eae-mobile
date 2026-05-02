class AppStrings {
  static String currentLanguage = 'en';
  static bool get _isArabic => currentLanguage == 'ar';
  static String get settingsTitle => _isArabic ? 'الإعدادات' : 'Settings';
}
