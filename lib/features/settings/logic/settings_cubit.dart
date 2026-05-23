import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/settings_models.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  late final SettingsState _initialState;

  SettingsCubit() : super(const SettingsState.loading()) {
    _loadMockData();
  }

  void _loadMockData() {
    final viewData = SettingsViewData(
      pageTitle: 'Enterprise Assessment',
      profile: const SettingsProfileData(
        avatarInitials: 'MS',
        name: 'Marcus Sterling',
        role: 'Senior Risk Auditor • Financial Systems',
        department: 'Internal Audit & Compliance',
        corporateEmail: 'm.sterling@enterprise-corp.com',
      ),
      securityClearanceLabel: 'Security Clearance',
      securityClearanceStatus: 'Secure',
      lastLoginLabel: 'Last Login',
      lastLoginValue: 'Today, 08:42 AM',
      support: const SettingsSupportData(
        title: 'Institutional Support',
        description:
            'Need technical assistance with the assessment engine? Connect with our enterprise ITSM desk.',
        actionLabel: 'Contact Support',
      ),
      profileSettingsTitle: 'Profile Settings',
      fullNameLabel: 'Full Name',
      corporateEmailLabel: 'Corporate Email',
      departmentLabel: 'Department',
      preferredLanguageLabel: 'Preferred Language',
      securityTitle: 'Security & Biometrics',
      biometricTitle: 'Biometric Authentication',
      biometricDescription: 'Use TouchID or FaceID for instant vault access.',
      mfaTitle: 'Multi-Factor Authentication (MFA)',
      mfaDescription: 'Required for high-level risk adjustments.',
      mfaStatusLabel: 'Always Enabled',
      sessionTimeoutTitle: 'Session Timeout',
      sessionTimeoutDescription: 'Auto-lock after 15 minutes of inactivity.',
      notificationsTitle: 'Push Notifications',
      criticalAlertsTitle: 'Critical Assessment Alerts',
      criticalAlertsDescription: '',
      dailySummaryTitle: 'Daily Sync Summary',
      dailySummaryDescription: '',
      teamActivityTitle: 'Team Activity Notifications',
      teamActivityDescription: '',
      cancelLabel: 'Cancel Changes',
      saveLabel: 'Save Preferences',
      departments: const [
        'Internal Audit & Compliance',
        'Enterprise Risk',
        'Financial Systems',
        'Security Operations',
      ],
      languages: const [
        'English (United States)',
        'English (United Kingdom)',
        'Arabic (Saudi Arabia)',
      ],
    );

    _initialState = SettingsState.ready(
      viewData: viewData,
      selectedDepartment: viewData.profile.department,
      selectedLanguage: 'English (United States)',
      biometricEnabled: true,
      sessionTimeoutEnabled: false,
      criticalAlertsEnabled: true,
      dailySummaryEnabled: false,
      teamActivityEnabled: true,
      hasUnsavedChanges: false,
    );

    emit(_initialState);
  }

  void selectDepartment(String department) {
    _updateReady(selectedDepartment: department);
  }

  void selectLanguage(String language) {
    _updateReady(selectedLanguage: language);
  }

  void toggleBiometricEnabled() {
    _updateReady(biometricEnabled: !_snapshot.biometricEnabled);
  }

  void toggleSessionTimeoutEnabled() {
    _updateReady(sessionTimeoutEnabled: !_snapshot.sessionTimeoutEnabled);
  }

  void toggleCriticalAlertsEnabled() {
    _updateReady(criticalAlertsEnabled: !_snapshot.criticalAlertsEnabled);
  }

  void toggleDailySummaryEnabled() {
    _updateReady(dailySummaryEnabled: !_snapshot.dailySummaryEnabled);
  }

  void toggleTeamActivityEnabled() {
    _updateReady(teamActivityEnabled: !_snapshot.teamActivityEnabled);
  }

  void resetPreferences() {
    emit(_initialState);
  }

  void savePreferences() {
    _updateReady(hasUnsavedChanges: false);
  }

  SettingsSnapshot get _snapshot {
    return state.maybeWhen(
      ready:
          (
            viewData,
            selectedDepartment,
            selectedLanguage,
            biometricEnabled,
            sessionTimeoutEnabled,
            criticalAlertsEnabled,
            dailySummaryEnabled,
            teamActivityEnabled,
            hasUnsavedChanges,
          ) {
            return SettingsSnapshot(
              viewData: viewData,
              selectedDepartment: selectedDepartment,
              selectedLanguage: selectedLanguage,
              biometricEnabled: biometricEnabled,
              sessionTimeoutEnabled: sessionTimeoutEnabled,
              criticalAlertsEnabled: criticalAlertsEnabled,
              dailySummaryEnabled: dailySummaryEnabled,
              teamActivityEnabled: teamActivityEnabled,
              hasUnsavedChanges: hasUnsavedChanges,
            );
          },
      orElse: () => throw StateError('Settings state is not ready.'),
    );
  }

  void _updateReady({
    String? selectedDepartment,
    String? selectedLanguage,
    bool? biometricEnabled,
    bool? sessionTimeoutEnabled,
    bool? criticalAlertsEnabled,
    bool? dailySummaryEnabled,
    bool? teamActivityEnabled,
    bool? hasUnsavedChanges,
  }) {
    final current = _snapshot;

    emit(
      SettingsState.ready(
        viewData: current.viewData,
        selectedDepartment: selectedDepartment ?? current.selectedDepartment,
        selectedLanguage: selectedLanguage ?? current.selectedLanguage,
        biometricEnabled: biometricEnabled ?? current.biometricEnabled,
        sessionTimeoutEnabled:
            sessionTimeoutEnabled ?? current.sessionTimeoutEnabled,
        criticalAlertsEnabled:
            criticalAlertsEnabled ?? current.criticalAlertsEnabled,
        dailySummaryEnabled: dailySummaryEnabled ?? current.dailySummaryEnabled,
        teamActivityEnabled: teamActivityEnabled ?? current.teamActivityEnabled,
        hasUnsavedChanges: hasUnsavedChanges ?? true,
      ),
    );
  }
}

class SettingsSnapshot {
  final SettingsViewData viewData;
  final String selectedDepartment;
  final String selectedLanguage;
  final bool biometricEnabled;
  final bool sessionTimeoutEnabled;
  final bool criticalAlertsEnabled;
  final bool dailySummaryEnabled;
  final bool teamActivityEnabled;
  final bool hasUnsavedChanges;

  const SettingsSnapshot({
    required this.viewData,
    required this.selectedDepartment,
    required this.selectedLanguage,
    required this.biometricEnabled,
    required this.sessionTimeoutEnabled,
    required this.criticalAlertsEnabled,
    required this.dailySummaryEnabled,
    required this.teamActivityEnabled,
    required this.hasUnsavedChanges,
  });
}
