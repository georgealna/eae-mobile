import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class RolesSecurityHeader extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSectionChanged;
  final VoidCallback onCreateRole;
  final VoidCallback onUpdatePolicy;

  const RolesSecurityHeader({
    super.key,
    required this.selectedIndex,
    required this.onSectionChanged,
    required this.onCreateRole,
    required this.onUpdatePolicy,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Roles & Security',
                style: AppTextStyles.font32DarkGreyMedium.copyWith(
                  color: AppColors.primaryColor9,
                  fontWeight: FontWeight.w700,
                  height: 1.05,
                ),
              ),
            ),
            IconButton.filled(
              tooltip: selectedIndex == 0 ? 'Create role' : 'Update policy',
              onPressed: selectedIndex == 0 ? onCreateRole : onUpdatePolicy,
              icon: Icon(
                selectedIndex == 0
                    ? Icons.admin_panel_settings_outlined
                    : Icons.security_update_good_outlined,
              ),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.secondaryColor7,
                foregroundColor: AppColors.neutralColor,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          'Manage tenant roles, user assignments, and security policy.',
          style: AppTextStyles.font14DarkGreyRegular.copyWith(
            color: AppColors.tertiaryColor6,
            height: 1.5,
          ),
        ),
        verticalSpace(16),
        SegmentedButton<int>(
          segments: const [
            ButtonSegment(
              value: 0,
              icon: Icon(Icons.badge_outlined),
              label: Text('Roles'),
            ),
            ButtonSegment(
              value: 1,
              icon: Icon(Icons.policy_outlined),
              label: Text('Policy'),
            ),
          ],
          selected: {selectedIndex},
          onSelectionChanged: (value) => onSectionChanged(value.first),
          style: ButtonStyle(
            visualDensity: VisualDensity.compact,
            textStyle: WidgetStatePropertyAll(
              AppTextStyles.font12DarkGreySemiBold,
            ),
          ),
        ),
      ],
    );
  }
}
