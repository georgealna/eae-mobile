class AppStrings {
  static String currentLanguage = 'en';
  static bool get _isArabic => currentLanguage == 'ar';
  static String get settingsTitle => _isArabic ? 'الإعدادات' : 'Settings';

  // Secure Access Screen
  static String get enterpriseAssessmentTitle =>
      _isArabic ? 'تقييم المؤسسة' : 'Enterprise Assessment';
  static String get institutionalGatewayTitle =>
      _isArabic ? 'البوابة المؤسسية' : 'INSTITUTIONAL GATEWAY';
  static String get secureAccess =>
      _isArabic ? 'الدخول الآمن' : 'Secure Access';
  static String get secureAccessDescription => _isArabic
      ? 'يرجى تقديم بيانات الاعتماد المؤسسية للتحقق من منظمتك والمتابعة إلى بوابة التقييم.'
      : 'Please provide your corporate credentials to\nverify your organization and proceed to the\nassessment portal.';
  static String get emailOrIdForm => _isArabic
      ? 'name@company.com او ORG-12345'
      : 'name@company.com or ORG-12345';

  static String get emailOrId => _isArabic
      ? 'البريد الإلكتروني أو المعرف'
      : 'Corporate Email or Organizational ID';
  static String get identifyingInstitution =>
      _isArabic ? 'تحديد المؤسسة' : 'Identify Institution';
  static String get encryptedMultiFactorAuthentication => _isArabic
      ? 'المصادقة متعددة العوامل المشفرة نشطة'
      : 'Encrypted multi-factor authentication active';

  static String get globalBankX =>
      _isArabic ? 'Global Bank X' : 'Global Bank X';
  static String get engineeringSOC =>
      _isArabic ? 'Engineering SOC' : 'Engineering SOC';
  static String get fintechPartners =>
      _isArabic ? 'Fintech Partners' : 'Fintech Partners';
  static String get maritimeAlliance =>
      _isArabic ? 'Maritime Alliance' : 'Maritime Alliance';
  static String get insuranceGroup =>
      _isArabic ? 'Insurance Group' : 'Insurance Group';
  static String get otherPartners =>
      _isArabic ? 'شركاء آخرون' : 'Other Partners';
  static String get institutionalSecurityNotice =>
      _isArabic ? 'إشعار أمني مؤسسي' : 'Institutional Security Notice';
  static String get institutionalSecurityNoticeDescription => _isArabic
      ? 'هذا البوابة مخصصة للأفراد المخولين. يتم مراقبة اتصالك وحمايته بواسطة بروتوكولات تشفير Enterprise Vault.'
      : 'This assessment portal is strictly for authorized personnel. Your connection is being monitored and protected by Enterprise Vault encryption protocols.';

  static String get allRightsReserved => _isArabic
      ? '© 2024 Enterprise Assessment Engine. جميع الحقوق محفوظة.'
      : '© 2024 Enterprise Assessment Engine. All rights reserved.';
  static String get privacyProtocol =>
      _isArabic ? 'بروتوكول الخصوصية' : 'PRIVACY PROTOCOL';
  static String get termsOfAccess =>
      _isArabic ? 'شروط الوصول' : 'TERMS OF ACCESS';
  static String get securityWhitepaper =>
      _isArabic ? 'ورقة أمنية' : 'SECURITY WHITEPAPER';
}
