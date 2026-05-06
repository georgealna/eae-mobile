import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_models.dart';

class AssessmentMetricsCard extends StatelessWidget {
  final AssessmentMetrics metrics;

  const AssessmentMetricsCard({super.key, required this.metrics});

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
          Text(
            AppStrings.assessmentMetrics.toUpperCase(),
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.tertiaryColor7,
              letterSpacing: 2,
            ),
          ),
          verticalSpace(16),
          _MetricRow(
            label: AppStrings.avgScore,
            valueText: '${metrics.averageScore}%',
            progress: metrics.averageScore / 100,
          ),
          verticalSpace(16),
          _MetricRow(
            label: AppStrings.completionRate,
            valueText: '${metrics.completionRate ~/ 10}/10',
            progress: metrics.completionRate / 100,
          ),
        ],
      ),
    );
  }
}

class _MetricRow extends StatelessWidget {
  final String label;
  final String valueText;
  final double progress;

  const _MetricRow({
    required this.label,
    required this.valueText,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: AppTextStyles.font12DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor7,
              ),
            ),
            Text(
              valueText,
              style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                color: AppColors.primaryColor9,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: LinearProgressIndicator(
            minHeight: 6.h,
            value: progress,
            backgroundColor: AppColors.tertiaryColor2,
            valueColor: AlwaysStoppedAnimation(AppColors.secondaryColor),
          ),
        ),
      ],
    );
  }
}
