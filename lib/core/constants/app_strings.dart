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

  // Assessment Inventory
  static String get assessmentInventoryTitle =>
      _isArabic ? 'سجل التقييمات' : 'Assessment Inventory';
  static String get assessmentInventorySubtitle => _isArabic
      ? 'راجع متطلباتك الحالية وسجل الأداء.'
      : 'Review your current requirements and\nperformance history.';
  static String get activeAssessments =>
      _isArabic ? 'التقييمات النشطة' : 'Active Assessments';
  static String get readyToBegin => _isArabic ? 'جاهز للبدء' : 'Ready to Begin';
  static String get duration => _isArabic ? 'المدة' : 'Duration';
  static String get minutes => _isArabic ? 'دقيقة' : 'Minutes';
  static String get startAssessment =>
      _isArabic ? 'ابدأ التقييم' : 'Start Assessment';
  static String get proctorsAvailable =>
      _isArabic ? 'المراقبون متاحون' : 'Proctors Available';
  static String get resume => _isArabic ? 'استكمال' : 'Resume';
  static String expiresInDays(int days) =>
      _isArabic ? 'تنتهي خلال $days أيام' : 'Expires in $days days';
  static String get upcoming => _isArabic ? 'القادم' : 'Upcoming';
  static String scheduledFor(String dateText) =>
      _isArabic ? 'مجدولة لـ $dateText' : 'Scheduled for $dateText';
  static String get addToCalendar =>
      _isArabic ? 'أضف إلى التقويم' : 'Add to Calendar';
  static String get assessmentMetrics =>
      _isArabic ? 'مقاييس التقييم' : 'Assessment Metrics';
  static String get avgScore => _isArabic ? 'متوسط الدرجة' : 'Avg. Score';
  static String get completionRate =>
      _isArabic ? 'معدل الإكمال' : 'Completion Rate';
  static String get assessmentHistory =>
      _isArabic ? 'سجل التقييم' : 'Assessment History';
  static String get assessmentName =>
      _isArabic ? 'اسم التقييم' : 'Assessment Name';
  static String get dateCompleted =>
      _isArabic ? 'تاريخ الإكمال' : 'Date Completed';

  // Forensics Checkpoint
  static String get securityProtocol =>
      _isArabic ? 'بروتوكول الأمان V4.2' : 'Security Protocol V4.2';
  static String get forensicsCheckpointTitle =>
      _isArabic ? 'نقطة تحقق الطب الشرعي' : 'Forensics Checkpoint';
  static String get forensicsCheckpointSubtitle => _isArabic
      ? 'قبل الوصول إلى بيئة تقييم المؤسسة يجب التحقق من سلامة الجهاز والموقع الفعلي لضمان بقاء البيانات المالية داخل الخزنة الرقمية.'
      : 'Before accessing the enterprise assessment environment, we must verify your hardware integrity and physical location. This ensures all financial data remains within the digital vault.';
  static String get hardwareIntegrity =>
      _isArabic ? 'سلامة الجهاز' : 'Hardware Integrity';
  static String get validated => _isArabic ? 'تم التحقق' : 'Validated';
  static String get mandatoryAuditStatus =>
      _isArabic ? 'حالة التدقيق الإلزامي' : 'Mandatory Audit Status';
  static String checksComplete(int done, int total) =>
      _isArabic ? '$done من $total مكتملة' : '$done of $total checks complete';
  static String get sessionRecordedNotice => _isArabic
      ? 'يتم تسجيل الجلسة لأغراض الامتثال وفق قاعدة SEC 17a-4.'
      : 'Your session is being recorded for compliance purposes under the SEC Rule 17a-4.';
  static String get unlockAssessment =>
      _isArabic ? 'فتح التقييم' : 'Unlock Assessment';
  static String get deviceId => _isArabic ? 'معرف الجهاز' : 'Device ID';
  static String get auditLatency => _isArabic ? 'زمن التدقيق' : 'Audit Latency';

  // Assessment Setup
  static String get levelCertifiedExecutive =>
      _isArabic ? 'تنفيذي معتمد - المستوى 4' : 'Level 4 Certified Executive';
  static String get strategicFinancialRiskAnalysis => _isArabic
      ? 'تحليل المخاطر المالية الاستراتيجية'
      : 'Strategic Financial Risk Analysis';
  static String get assessmentOverviewDescription => _isArabic
      ? 'هذا التقييم يقيس قدرات اتخاذ القرار عالية المستوى ضمن أطر مخاطر المؤسسة. يُتوقع من المرشحين دمج مجموعات بيانات متعددة الأبعاد لتقديم إشراف مالي قابل للتنفيذ.'
      : 'This assessment evaluates high-level decision-making capabilities within enterprise risk frameworks. Candidates are expected to synthesize multi-dimensional data sets to provide actionable financial oversight.';
  static String get modulesLabel => _isArabic ? 'الوحدات' : 'Modules';
  static String get sectionsLabel => _isArabic ? 'أقسام' : 'Sections';
  static String get difficultyLabel => _isArabic ? 'الصعوبة' : 'Difficulty';
  static String get difficultyAdvanced => _isArabic ? 'متقدم' : 'Advanced';
  static String get passMarkLabel => _isArabic ? 'درجة النجاح' : 'Pass Mark';
  static String get aggregateLabel => _isArabic ? 'إجمالي' : 'Aggregate';
  static String get systemRequirements =>
      _isArabic ? 'متطلبات النظام' : 'System Requirements';
  static String get hardwareSetup =>
      _isArabic ? 'إعدادات الأجهزة' : 'Hardware Setup';
  static String get preparingYourSpace =>
      _isArabic ? 'تحضير المساحة' : 'Preparing Your Space';
  static String get preparingYourSpaceDescription => _isArabic
      ? 'تأكد من أنك في غرفة هادئة وجيدة الإضاءة. يجب أن يكون وجهك مرئيا بوضوح لمحرك المراقبة طوال الجلسة.'
      : 'Ensure you are in a quiet, well-lit room. Your face must be clearly visible to the proctoring engine throughout the session.';
  static String get securityProtocolLabel =>
      _isArabic ? 'بروتوكول الأمان' : 'Security Protocol';
  static String get strictProctoredSession =>
      _isArabic ? 'جلسة مراقبة صارمة' : 'Strict Proctored Session';
  static String get readyForDeployment =>
      _isArabic ? 'جاهز للنشر' : 'Ready for Deployment';
  static String get precheckStatus =>
      _isArabic ? 'حالة الفحص المسبق' : 'Pre-check Status';
  static String get readyStatus => _isArabic ? 'جاهز' : 'Ready';
  static String get acknowledgeSetup => _isArabic
      ? 'أقر بأنني قرأت بروتوكولات الأمان وأوافق على المراقبة خلال هذه الجلسة التي مدتها 120 دقيقة.'
      : 'I acknowledge that I have read the security protocols and agree to be proctored during this 120-minute session.';
  static String get acknowledgeBeginSetup =>
      _isArabic ? 'الإقرار وبدء الإعداد' : 'Acknowledge & Begin Setup';
  static String get timerCannotBePaused => _isArabic
      ? 'بمجرد البدء، لا يمكن إيقاف المؤقت مؤقتا.'
      : 'Once you begin, the timer cannot be paused.';
  static String get technicalSupport =>
      _isArabic ? 'الدعم التقني' : 'Technical Support';
  static String get liveChat => _isArabic ? 'دردشة مباشرة' : 'Live Chat';
}
