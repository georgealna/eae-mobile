import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_form_fields.dart';
import 'package:eae_mobile/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/settings_cubit.dart';

class SettingsProfileSettingsCard extends StatelessWidget {
  final SettingsSnapshot snapshot;

  const SettingsProfileSettingsCard({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionCard(
      title: snapshot.viewData.profileSettingsTitle,
      icon: Icons.person_outline_rounded,
      child: Column(
        children: [
          SettingsFieldGroup(
            label: snapshot.viewData.fullNameLabel,
            child: SettingsReadOnlyField(value: snapshot.viewData.profile.name),
          ),
          verticalSpace(14),
          SettingsFieldGroup(
            label: snapshot.viewData.corporateEmailLabel,
            child: SettingsReadOnlyField(
              value: snapshot.viewData.profile.corporateEmail,
            ),
          ),
          verticalSpace(14),
          SettingsFieldGroup(
            label: snapshot.viewData.departmentLabel,
            child: SettingsDropdownField(
              value: snapshot.selectedDepartment,
              items: snapshot.viewData.departments,
              onChanged: (value) {
                if (value != null) {
                  context.read<SettingsCubit>().selectDepartment(value);
                }
              },
            ),
          ),
          verticalSpace(14),
          SettingsFieldGroup(
            label: snapshot.viewData.preferredLanguageLabel,
            child: SettingsDropdownField(
              value: snapshot.selectedLanguage,
              items: snapshot.viewData.languages,
              onChanged: (value) {
                if (value != null) {
                  context.read<SettingsCubit>().selectLanguage(value);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
