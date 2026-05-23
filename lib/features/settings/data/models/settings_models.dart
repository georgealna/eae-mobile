class SettingsViewData {
  final String pageTitle;
  final SettingsProfileData profile;
  final String securityClearanceLabel;
  final String securityClearanceStatus;
  final String lastLoginLabel;
  final String lastLoginValue;
  final SettingsSupportData support;
  final String profileSettingsTitle;
  final String fullNameLabel;
  final String corporateEmailLabel;
  final String departmentLabel;
  final String preferredLanguageLabel;
  final String securityTitle;
  final String biometricTitle;
  final String biometricDescription;
  final String mfaTitle;
  final String mfaDescription;
  final String mfaStatusLabel;
  final String sessionTimeoutTitle;
  final String sessionTimeoutDescription;
  final String notificationsTitle;
  final String criticalAlertsTitle;
  final String criticalAlertsDescription;
  final String dailySummaryTitle;
  final String dailySummaryDescription;
  final String teamActivityTitle;
  final String teamActivityDescription;
  final String cancelLabel;
  final String saveLabel;
  final List<String> departments;
  final List<String> languages;

  const SettingsViewData({
    required this.pageTitle,
    required this.profile,
    required this.securityClearanceLabel,
    required this.securityClearanceStatus,
    required this.lastLoginLabel,
    required this.lastLoginValue,
    required this.support,
    required this.profileSettingsTitle,
    required this.fullNameLabel,
    required this.corporateEmailLabel,
    required this.departmentLabel,
    required this.preferredLanguageLabel,
    required this.securityTitle,
    required this.biometricTitle,
    required this.biometricDescription,
    required this.mfaTitle,
    required this.mfaDescription,
    required this.mfaStatusLabel,
    required this.sessionTimeoutTitle,
    required this.sessionTimeoutDescription,
    required this.notificationsTitle,
    required this.criticalAlertsTitle,
    required this.criticalAlertsDescription,
    required this.dailySummaryTitle,
    required this.dailySummaryDescription,
    required this.teamActivityTitle,
    required this.teamActivityDescription,
    required this.cancelLabel,
    required this.saveLabel,
    required this.departments,
    required this.languages,
  });
}

class SettingsProfileData {
  final String avatarInitials;
  final String name;
  final String role;
  final String department;
  final String corporateEmail;

  const SettingsProfileData({
    required this.avatarInitials,
    required this.name,
    required this.role,
    required this.department,
    required this.corporateEmail,
  });
}

class SettingsSupportData {
  final String title;
  final String description;
  final String actionLabel;

  const SettingsSupportData({
    required this.title,
    required this.description,
    required this.actionLabel,
  });
}
