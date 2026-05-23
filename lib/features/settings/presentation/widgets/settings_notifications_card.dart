import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_form_fields.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/settings_cubit.dart';

class SettingsNotificationsCard extends StatelessWidget {
  final SettingsSnapshot snapshot;

  const SettingsNotificationsCard({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionCard(
      title: snapshot.viewData.notificationsTitle,
      icon: Icons.notifications_none_rounded,
      child: Column(
        children: [
          SettingsSwitchTile(
            title: snapshot.viewData.criticalAlertsTitle,
            description: snapshot.viewData.criticalAlertsDescription,
            value: snapshot.criticalAlertsEnabled,
            onChanged: (_) =>
                context.read<SettingsCubit>().toggleCriticalAlertsEnabled(),
          ),
          verticalSpace(14),
          SettingsSwitchTile(
            title: snapshot.viewData.dailySummaryTitle,
            description: snapshot.viewData.dailySummaryDescription,
            value: snapshot.dailySummaryEnabled,
            onChanged: (_) =>
                context.read<SettingsCubit>().toggleDailySummaryEnabled(),
          ),
          verticalSpace(14),
          SettingsSwitchTile(
            title: snapshot.viewData.teamActivityTitle,
            description: snapshot.viewData.teamActivityDescription,
            value: snapshot.teamActivityEnabled,
            onChanged: (_) =>
                context.read<SettingsCubit>().toggleTeamActivityEnabled(),
          ),
        ],
      ),
    );
  }
}
