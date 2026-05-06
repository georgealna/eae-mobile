import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_models.dart';

class AssessmentSecondaryCard extends StatelessWidget {
  final ActiveAssessment assessment;
  final VoidCallback? onTap;

  const AssessmentSecondaryCard({
    super.key,
    required this.assessment,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: AppColors.neutralColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.tertiaryColor2),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor4,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                Icons.account_balance_outlined,
                size: 22.sp,
                color: AppColors.primaryColor9,
              ),
            ),
            horizontalSpace(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    assessment.title,
                    style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                      color: AppColors.primaryColor9,
                    ),
                  ),
                  verticalSpace(4),
                  if (assessment.expiresInLabel != null)
                    Text(
                      assessment.expiresInLabel!,
                      style: AppTextStyles.font11DarkGreyLight.copyWith(
                        color: AppColors.tertiaryColor6,
                      ),
                    ),
                ],
              ),
            ),
            Text(
              '${assessment.durationMinutes}m',
              style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                color: AppColors.tertiaryColor6,
              ),
            ),
            horizontalSpace(12),
            Text(
              assessment.actionLabel,
              style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                color: AppColors.secondaryColor7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
