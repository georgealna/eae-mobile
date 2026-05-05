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

  // Login Screen
  static String get secureIdentityGateway =>
      _isArabic ? 'بوابة الهوية الآمنة' : 'Secure Identity Gateway';
  static String get signInWithBiometrics =>
      _isArabic ? 'تسجيل الدخول بالبصمة' : 'Sign in with Biometrics';
  static String get biometricSecurityActive =>
      _isArabic ? 'الأمان البيومتري نشط' : 'Biometric security active';
  static String get enterpriseOidc =>
      _isArabic ? 'OIDC مؤسسي' : 'ENTERPRISE OIDC';
  static String get workEmail => _isArabic ? 'البريد العملي' : 'Work Email';
  static String get workEmailHint =>
      _isArabic ? 'name@company.com' : 'name@company.com';
  static String get password => _isArabic ? 'كلمة المرور' : 'Password';
  static String get passwordHint =>
      _isArabic ? 'ادخل كلمة المرور' : 'Enter password';
  static String get forgotPassword =>
      _isArabic ? 'نسيت كلمة المرور؟' : 'Forgot password?';
  static String get enterpriseSignIn =>
      _isArabic ? 'تسجيل دخول المؤسسة' : 'Enterprise Sign In';
  static String get soc2Certified =>
      _isArabic ? 'معتمد SOC2 النوع II' : 'SOC2 TYPE II CERTIFIED';
  static String get encryption256 =>
      _isArabic ? 'تشفير 256 بت' : '256-BIT ENCRYPTION';
  static String get authorizedUseOnly => _isArabic
      ? 'الاستخدام للمخولين فقط. تتم مراقبة جميع البيانات وتشفيرها.'
      : 'Authorized use only. All session data is monitored and encrypted.';
  static String get privacyPolicy =>
      _isArabic ? 'سياسة الخصوصية' : 'Privacy Policy';
  static String get securityTerms =>
      _isArabic ? 'شروط الأمان' : 'Security Terms';
  static String get statusLabel => _isArabic ? 'الحالة:' : 'STATUS:';
  static String get allSystemsOperational =>
      _isArabic ? 'جميع الأنظمة تعمل' : 'ALL SYSTEMS OPERATIONAL';
  static String get regionLabel =>
      _isArabic ? 'المنطقة: US-EAST-1' : 'Region: US-EAST-1';
  static String get nodeLabel =>
      _isArabic ? 'العقدة: 842.22.4' : 'Node: 842.22.4';

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
