import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AssessmentOverviewCard extends StatelessWidget {
  final String badgeLabel;
  final String title;
  final String durationLabel;
  final String description;
  final String modulesValue;
  final String difficultyValue;
  final String passMarkValue;

  const AssessmentOverviewCard({
    super.key,
    required this.badgeLabel,
    required this.title,
    required this.durationLabel,
    required this.description,
    required this.modulesValue,
    required this.difficultyValue,
    required this.passMarkValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Badge(label: badgeLabel),
              _DurationPill(value: durationLabel),
            ],
          ),
          verticalSpace(14),
          Text(
            title,
            style: AppTextStyles.font20DarkGreyBold.copyWith(
              color: AppColors.primaryColor9,
              height: 1.2,
            ),
          ),
          verticalSpace(12),
          Container(width: 24.w, height: 2.h, color: AppColors.primaryColor9),
          verticalSpace(12),
          Text(
            description,
            style: AppTextStyles.font12DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              height: 1.6,
            ),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  label: AppStrings.modulesLabel,
                  value: modulesValue,
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: _StatCard(
                  label: AppStrings.difficultyLabel,
                  value: difficultyValue,
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: _StatCard(
                  label: AppStrings.passMarkLabel,
                  value: passMarkValue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String label;

  const _Badge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor2,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.verified_user_outlined,
            size: 14.sp,
            color: AppColors.secondaryColor7,
          ),
          SizedBox(width: 6.w),
          Text(
            label.toUpperCase(),
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.secondaryColor7,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}

class _DurationPill extends StatelessWidget {
  final String value;

  const _DurationPill({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Row(
        children: [
          Icon(
            Icons.timer_outlined,
            size: 14.sp,
            color: AppColors.primaryColor9,
          ),
          SizedBox(width: 6.w),
          Text(
            value,
            style: AppTextStyles.font11DarkGreyLight.copyWith(
              color: AppColors.primaryColor9,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;

  const _StatCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              letterSpacing: 1.2,
            ),
          ),
          verticalSpace(6),
          Text(
            value,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ],
      ),
    );
  }
}
