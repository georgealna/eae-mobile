import 'package:eae_mobile/core/constants/colors.dart';
import 'package:eae_mobile/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsTopBar extends StatelessWidget {
  final String title;

  const SettingsTopBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.tertiaryColor2)),
      ),
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor10, AppColors.secondaryColor8],
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 14.w,
              height: 14.w,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor6,
                borderRadius: BorderRadius.circular(3.r),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.font17DarkGreySemiBold.copyWith(
                color: AppColors.primaryColor9,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(Icons.sync_rounded, size: 18.sp, color: AppColors.primaryColor9),
        ],
      ),
    );
  }
}
