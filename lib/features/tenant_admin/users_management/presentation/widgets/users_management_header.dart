import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class UsersManagementHeader extends StatelessWidget {
  final VoidCallback onCreateUser;
  final VoidCallback onInviteUser;

  const UsersManagementHeader({
    super.key,
    required this.onCreateUser,
    required this.onInviteUser,
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
                'Users Management',
                style: AppTextStyles.font32DarkGreyMedium.copyWith(
                  color: AppColors.primaryColor9,
                  fontWeight: FontWeight.w700,
                  height: 1.05,
                ),
              ),
            ),
            IconButton.filled(
              tooltip: 'Create user',
              onPressed: onCreateUser,
              icon: const Icon(Icons.person_add_alt_1_outlined),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.secondaryColor7,
                foregroundColor: AppColors.neutralColor,
              ),
            ),
            horizontalSpace(8),
            IconButton.outlined(
              tooltip: 'Invite user',
              onPressed: onInviteUser,
              icon: const Icon(Icons.mail_outline),
              style: IconButton.styleFrom(
                foregroundColor: AppColors.secondaryColor7,
                side: BorderSide(color: AppColors.secondaryColor7),
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          'Manage tenant users and account access.',
          style: AppTextStyles.font14DarkGreyRegular.copyWith(
            color: AppColors.tertiaryColor6,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
