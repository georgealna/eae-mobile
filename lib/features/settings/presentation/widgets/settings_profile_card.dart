import 'package:eae_mobile/core/constants/colors.dart';
import 'package:eae_mobile/core/constants/text_styles.dart';
import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/data/models/settings_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsProfileCard extends StatelessWidget {
  final SettingsViewData viewData;

  const SettingsProfileCard({super.key, required this.viewData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.tertiaryColor2),
        boxShadow: [
          BoxShadow(
            color: AppColors.tertiaryColor2.withValues(alpha: 0.22),
            blurRadius: 18.r,
            offset: Offset(0, 10.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 68.w,
                height: 68.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryColor9,
                      AppColors.secondaryColor8,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  viewData.profile.avatarInitials,
                  style: AppTextStyles.font20DarkGreyBold.copyWith(
                    color: AppColors.neutralColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Positioned(
                right: -2.w,
                bottom: -2.w,
                child: Container(
                  width: 24.w,
                  height: 24.w,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor8,
                    borderRadius: BorderRadius.circular(999.r),
                    border: Border.all(color: AppColors.neutralColor, width: 2),
                  ),
                  child: Icon(
                    Icons.verified_user_rounded,
                    size: 14.sp,
                    color: AppColors.neutralColor,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(12),
          Text(
            viewData.profile.name,
            textAlign: TextAlign.center,
            style: AppTextStyles.font17DarkGreySemiBold.copyWith(
              color: AppColors.primaryColor9,
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpace(4),
          Text(
            viewData.profile.role,
            textAlign: TextAlign.center,
            style: AppTextStyles.font12DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              height: 1.45,
            ),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: _DetailPill(
                  label: viewData.securityClearanceLabel,
                  value: viewData.securityClearanceStatus,
                  valueColor: AppColors.secondaryColor8,
                  backgroundColor: AppColors.secondaryColor2,
                  icon: Icons.lock_rounded,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _DetailPill(
                  label: viewData.lastLoginLabel,
                  value: viewData.lastLoginValue,
                  valueColor: AppColors.primaryColor9,
                  backgroundColor: AppColors.neutralColor,
                  icon: Icons.schedule_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DetailPill extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final Color backgroundColor;
  final IconData icon;

  const _DetailPill({
    required this.label,
    required this.value,
    required this.valueColor,
    required this.backgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Row(
        children: [
          Container(
            width: 26.w,
            height: 26.w,
            decoration: BoxDecoration(
              color: AppColors.neutralColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(icon, size: 14.sp, color: valueColor),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTextStyles.font10DarkGreyRegular.copyWith(
                    color: AppColors.tertiaryColor6,
                    letterSpacing: 0.7,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: valueColor,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
