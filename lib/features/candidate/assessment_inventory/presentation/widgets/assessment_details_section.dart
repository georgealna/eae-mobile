import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class AssessmentDetailsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const AssessmentDetailsSection({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.tertiaryColor2),
        boxShadow: [
          BoxShadow(
            color: AppColors.tertiaryColor2.withValues(alpha: 0.22),
            blurRadius: 18.r,
            offset: Offset(0, 8.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.font16DarkGreyBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
          verticalSpace(12),
          ...children,
        ],
      ),
    );
  }
}
