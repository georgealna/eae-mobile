import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class AssessmentDetailsRuleRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const AssessmentDetailsRuleRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          Container(
            width: 34.w,
            height: 34.w,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor2,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, size: 18.sp, color: AppColors.secondaryColor7),
          ),
          horizontalSpace(10),
          Expanded(
            child: Text(
              label,
              style: AppTextStyles.font12DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor7,
              ),
            ),
          ),
          horizontalSpace(8),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                color: AppColors.primaryColor9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
