part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = _Loading;

  const factory SettingsState.ready({
    required SettingsViewData viewData,
    required String selectedDepartment,
    required String selectedLanguage,
    required bool biometricEnabled,
    required bool sessionTimeoutEnabled,
    required bool criticalAlertsEnabled,
    required bool dailySummaryEnabled,
    required bool teamActivityEnabled,
    required bool hasUnsavedChanges,
  }) = _Ready;
}
