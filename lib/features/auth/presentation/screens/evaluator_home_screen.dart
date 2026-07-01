import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class EvaluatorHomeScreen extends StatelessWidget {
  const EvaluatorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _EvaluatorHomeView();
  }
}

class _EvaluatorHomeView extends StatelessWidget {
  const _EvaluatorHomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54.w,
                height: 54.w,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor2,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Icon(
                  Icons.rate_review_outlined,
                  color: AppColors.secondaryColor7,
                  size: 28.sp,
                ),
              ),
              verticalSpace(18),
              Text(
                'Evaluator Portal',
                style: AppTextStyles.font32DarkGreyMedium.copyWith(
                  color: AppColors.primaryColor9,
                  fontWeight: FontWeight.w700,
                  height: 1.08,
                ),
              ),
              verticalSpace(10),
              Text(
                'Review candidate submissions, score assessments, and manage evaluation queues.',
                style: AppTextStyles.font14DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor6,
                  height: 1.5,
                ),
              ),
              verticalSpace(24),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.neutralColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.tertiaryColor2),
                ),
                child: Text(
                  'Role-specific modules will be connected here.',
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
