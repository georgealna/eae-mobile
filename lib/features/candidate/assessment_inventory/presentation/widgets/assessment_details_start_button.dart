import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';

class AssessmentDetailsStartButton extends StatelessWidget {
  final VoidCallback onTap;

  const AssessmentDetailsStartButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54.h,
      child: Material(
        color: AppColors.secondaryColor6,
        borderRadius: BorderRadius.circular(12.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.startAssessment.toUpperCase(),
                  style: AppTextStyles.font12WhiteSemiBold.copyWith(
                    letterSpacing: 0.8,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 18.sp,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
