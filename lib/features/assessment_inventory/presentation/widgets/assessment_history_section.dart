import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_models.dart';

class AssessmentHistorySection extends StatelessWidget {
  final List<AssessmentHistoryItem> items;

  const AssessmentHistorySection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.assessmentHistory.toUpperCase(),
          style: AppTextStyles.font12DarkGreySemiBold.copyWith(
            color: AppColors.tertiaryColor7,
            letterSpacing: 2,
          ),
        ),
        verticalSpace(12),
        Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: AppColors.neutralColor,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: AppColors.tertiaryColor2),
          ),
          child: Column(
            children: [
              _HistoryHeaderRow(),
              verticalSpace(10),
              ...items.map((item) => _HistoryRow(item: item)),
            ],
          ),
        ),
      ],
    );
  }
}

class _HistoryHeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            AppStrings.assessmentName,
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            AppStrings.dateCompleted,
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            AppStrings.duration,
            textAlign: TextAlign.end,
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ],
    );
  }
}

class _HistoryRow extends StatelessWidget {
  final AssessmentHistoryItem item;

  const _HistoryRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.tertiaryColor2, height: 18.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                      color: AppColors.primaryColor9,
                    ),
                  ),
                  verticalSpace(2),
                  Text(
                    item.version,
                    style: AppTextStyles.font10DarkGreyRegular.copyWith(
                      color: AppColors.tertiaryColor6,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                item.completedDate,
                style: AppTextStyles.font12DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor7,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                item.duration,
                textAlign: TextAlign.end,
                style: AppTextStyles.font12DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor7,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
