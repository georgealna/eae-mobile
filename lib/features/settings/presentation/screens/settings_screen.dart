import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/logic/settings_cubit.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_action_buttons.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_notifications_card.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_profile_card.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_profile_settings_card.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_security_card.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_support_card.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SettingsView();
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          final snapshot = state.maybeWhen(
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
            orElse: () => null,
          );

          if (snapshot == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingsTopBar(title: snapshot.viewData.pageTitle),
                verticalSpace(16),
                SettingsProfileCard(viewData: snapshot.viewData),
                verticalSpace(18),
                SettingsSupportCard(support: snapshot.viewData.support),
                verticalSpace(18),
                SettingsProfileSettingsCard(snapshot: snapshot),
                verticalSpace(18),
                SettingsSecurityCard(snapshot: snapshot),
                verticalSpace(18),
                SettingsNotificationsCard(snapshot: snapshot),
                verticalSpace(18),
                SettingsActionButtons(
                  cancelLabel: snapshot.viewData.cancelLabel,
                  saveLabel: snapshot.viewData.saveLabel,
                  onCancel: () =>
                      context.read<SettingsCubit>().resetPreferences(),
                  onSave: () => context.read<SettingsCubit>().savePreferences(),
                ),
                verticalSpace(24),
              ],
            ),
          );
        },
      ),
    );
  }
}
