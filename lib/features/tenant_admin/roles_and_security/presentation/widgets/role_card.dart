import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/roles_and_security_response.dart';

class RoleCard extends StatelessWidget {
  final RoleItem role;
  final VoidCallback onEdit;
  final VoidCallback? onDelete;
  final VoidCallback onAssignUser;
  final VoidCallback onRemoveUser;

  const RoleCard({
    super.key,
    required this.role,
    required this.onEdit,
    required this.onDelete,
    required this.onAssignUser,
    required this.onRemoveUser,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 42.w,
                height: 42.w,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor2,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  role.isSystemRole
                      ? Icons.verified_user_outlined
                      : Icons.badge_outlined,
                  color: AppColors.secondaryColor7,
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role.roleName,
                      style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                        color: AppColors.primaryColor9,
                      ),
                    ),
                    verticalSpace(4),
                    Text(
                      role.roleCategory,
                      style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                        color: AppColors.tertiaryColor6,
                      ),
                    ),
                  ],
                ),
              ),
              _RoleChip(
                label: role.isSystemRole ? 'system' : 'custom',
                color: role.isSystemRole
                    ? AppColors.primaryColor9
                    : AppColors.secondaryColor7,
              ),
            ],
          ),
          verticalSpace(10),
          Text(
            role.description,
            style: AppTextStyles.font12DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              height: 1.45,
            ),
          ),
          verticalSpace(12),
          Row(
            children: [
              _RoleActionButton(
                tooltip: 'Edit role',
                icon: Icons.edit_outlined,
                onPressed: onEdit,
              ),
              horizontalSpace(8),
              _RoleActionButton(
                tooltip: 'Assign user',
                icon: Icons.person_add_alt_1_outlined,
                onPressed: onAssignUser,
              ),
              horizontalSpace(8),
              _RoleActionButton(
                tooltip: 'Remove user',
                icon: Icons.person_remove_outlined,
                onPressed: onRemoveUser,
              ),
              horizontalSpace(8),
              _RoleActionButton(
                tooltip: 'Delete role',
                icon: Icons.delete_outline,
                onPressed: onDelete,
                isDestructive: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RoleChip extends StatelessWidget {
  final String label;
  final Color color;

  const _RoleChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        label,
        style: AppTextStyles.font12DarkGreySemiBold.copyWith(color: color),
      ),
    );
  }
}

class _RoleActionButton extends StatelessWidget {
  final String tooltip;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isDestructive;

  const _RoleActionButton({
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
