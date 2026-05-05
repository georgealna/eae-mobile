import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AccessSecurityNotice extends StatelessWidget {
  const AccessSecurityNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.primaryColor1,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor4,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              Icons.shield_outlined,
              color: AppColors.secondaryColor,
              size: 20.sp,
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.institutionalSecurityNotice,
                  style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                verticalSpace(6),
                Text(
                  AppStrings.institutionalSecurityNoticeDescription,
                  style: AppTextStyles.font12DarkGreyLight.copyWith(
                    color: AppColors.tertiaryColor4,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
