import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';

class AssessmentPreparingCard extends StatelessWidget {
  final String title;
  final String description;

  const AssessmentPreparingCard({
    super.key,
    required this.title,
    required this.description,
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
            title,
            style: AppTextStyles.font14DarkGreySemiBold.copyWith(
              color: AppColors.neutralColor,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            description,
            style: AppTextStyles.font12DarkGreyLight.copyWith(
              color: AppColors.tertiaryColor3,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
