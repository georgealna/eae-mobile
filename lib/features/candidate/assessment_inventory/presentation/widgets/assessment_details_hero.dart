import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_inventory/assessment_inventory_response.dart';

class AssessmentDetailsHero extends StatelessWidget {
  final AssessmentExam exam;

  const AssessmentDetailsHero({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.primaryColor10,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _HeroChip(label: exam.examStatus),
              _HeroChip(label: exam.examType),
              _HeroChip(label: exam.assessmentMode),
            ],
          ),
          verticalSpace(16),
          Text(
            exam.examName,
            style: AppTextStyles.font32DarkGreyMedium.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          verticalSpace(10),
          Text(
            exam.examCode,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.secondaryColor3,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroChip extends StatelessWidget {
  final String label;

  const _HeroChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.white.withValues(alpha: 0.2)),
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTextStyles.font10DarkGreyRegular.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
