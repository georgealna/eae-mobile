import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_form_fields.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/settings_cubit.dart';

class SettingsSecurityCard extends StatelessWidget {
  final SettingsSnapshot snapshot;

  const SettingsSecurityCard({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionCard(
      title: snapshot.viewData.securityTitle,
      icon: Icons.shield_outlined,
      child: Column(
        children: [
          SettingsSwitchTile(
            title: snapshot.viewData.biometricTitle,
            description: snapshot.viewData.biometricDescription,
            value: snapshot.biometricEnabled,
            onChanged: (_) =>
                context.read<SettingsCubit>().toggleBiometricEnabled(),
          ),
          verticalSpace(18),
          SettingsStatusTile(
            title: snapshot.viewData.mfaTitle,
            description: snapshot.viewData.mfaDescription,
            statusLabel: snapshot.viewData.mfaStatusLabel,
          ),
          verticalSpace(18),
          SettingsSwitchTile(
            title: snapshot.viewData.sessionTimeoutTitle,
            description: snapshot.viewData.sessionTimeoutDescription,
            value: snapshot.sessionTimeoutEnabled,
            onChanged: (_) =>
                context.read<SettingsCubit>().toggleSessionTimeoutEnabled(),
          ),
        ],
      ),
    );
  }
}
