import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class ForensicsNoticeCard extends StatelessWidget {
  final String notice;

  const ForensicsNoticeCard({super.key, required this.notice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor1,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.secondaryColor3),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            size: 16.sp,
            color: AppColors.secondaryColor7,
          ),
          horizontalSpace(10),
          Expanded(
            child: Text(
              notice,
              style: AppTextStyles.font11DarkGreyLight.copyWith(
                color: AppColors.secondaryColor7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
