import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class TenantAdminPlaceholderScreen extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const TenantAdminPlaceholderScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              child: Icon(icon, color: AppColors.secondaryColor7, size: 28.sp),
            ),
            verticalSpace(18),
            Text(
              title,
              style: AppTextStyles.font32DarkGreyMedium.copyWith(
                color: AppColors.primaryColor9,
                fontWeight: FontWeight.w700,
                height: 1.08,
              ),
            ),
            verticalSpace(10),
            Text(
              subtitle,
              style: AppTextStyles.font14DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor6,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
