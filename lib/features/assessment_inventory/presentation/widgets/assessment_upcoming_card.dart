import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_models.dart';

class AssessmentUpcomingCard extends StatelessWidget {
  final UpcomingAssessment assessment;
  final VoidCallback? onTap;

  const AssessmentUpcomingCard({
    super.key,
    required this.assessment,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        gradient: LinearGradient(
          colors: [AppColors.primaryColor10, AppColors.primaryColor8],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.upcoming.toUpperCase(),
            style: AppTextStyles.font11DarkGreyLight.copyWith(
              color: AppColors.tertiaryColor3,
              letterSpacing: 2,
            ),
          ),
          verticalSpace(12),
          Text(
            assessment.title,
            style: AppTextStyles.font20DarkGreyBold.copyWith(
              color: AppColors.neutralColor,
            ),
          ),
          verticalSpace(6),
          Text(
            assessment.scheduledLabel,
            style: AppTextStyles.font12DarkGreyLight.copyWith(
              color: AppColors.tertiaryColor3,
            ),
          ),
          verticalSpace(16),
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12.r),
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: AppColors.primaryColor7,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: AppColors.primaryColor6),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 16.sp,
                    color: AppColors.secondaryColor,
                  ),
                  horizontalSpace(8),
                  Text(
                    assessment.actionLabel,
                    style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
