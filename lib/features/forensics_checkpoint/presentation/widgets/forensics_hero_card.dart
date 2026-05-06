import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class ForensicsHeroCard extends StatelessWidget {
  final String title;
  final String status;
  final String step;

  const ForensicsHeroCard({
    super.key,
    required this.title,
    required this.status,
    required this.step,
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
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.08,
              child: Icon(
                Icons.storage_outlined,
                size: 180.sp,
                color: AppColors.neutralColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                '$title: $status',
                style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                  color: AppColors.neutralColor,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    step,
                    style: AppTextStyles.font32DarkGreyMedium.copyWith(
                      color: AppColors.neutralColor.withValues(alpha: 0.2),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.fingerprint,
                    size: 30.sp,
                    color: AppColors.secondaryColor,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.infinity,
                height: 3.h,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
