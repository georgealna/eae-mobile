import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/users_management_response.dart';

class UserManagementCard extends StatelessWidget {
  final UserManagementUser user;
  final VoidCallback onDetails;
  final VoidCallback onResetPassword;
  final VoidCallback? onDeactivate;

  const UserManagementCard({
    super.key,
    required this.user,
    required this.onDetails,
    required this.onResetPassword,
    required this.onDeactivate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor2,
                child: Text(
                  user.firstName.isEmpty ? '?' : user.firstName[0].toUpperCase(),
                  style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                    color: AppColors.secondaryColor7,
                  ),
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.firstName} ${user.lastName}',
                      style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                        color: AppColors.primaryColor9,
                      ),
                    ),
                    verticalSpace(4),
                    Text(
                      user.email,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.font12DarkGreyRegular.copyWith(
                        color: AppColors.tertiaryColor6,
                      ),
                    ),
                    verticalSpace(4),
                    Text(
                      user.userType,
                      style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                        color: AppColors.tertiaryColor7,
                      ),
                    ),
                  ],
                ),
              ),
              _StatusChip(status: user.status, isActive: user.isActive),
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              _CardActionButton(
                tooltip: 'User details',
                icon: Icons.visibility_outlined,
                onPressed: onDetails,
              ),
              horizontalSpace(8),
              _CardActionButton(
                tooltip: 'Reset password',
                icon: Icons.lock_reset_outlined,
                onPressed: onResetPassword,
              ),
              horizontalSpace(8),
              _CardActionButton(
                tooltip: 'Deactivate user',
                icon: Icons.block_outlined,
                onPressed: onDeactivate,
                isDestructive: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  final bool isActive;

  const _StatusChip({required this.status, required this.isActive});

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColors.secondaryColor7 : AppColors.tertiaryColor6;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        status,
        style: AppTextStyles.font12DarkGreySemiBold.copyWith(color: color),
      ),
    );
  }
}

class _CardActionButton extends StatelessWidget {
  final String tooltip;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isDestructive;

  const _CardActionButton({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isDestructive ? AppColors.redWarring : AppColors.primaryColor9;

    return Expanded(
      child: IconButton.outlined(
        tooltip: tooltip,
        onPressed: onPressed,
        icon: Icon(icon),
        style: IconButton.styleFrom(
          foregroundColor: onPressed == null ? AppColors.tertiaryColor5 : color,
          side: BorderSide(color: AppColors.tertiaryColor2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
      ),
    );
  }
}
