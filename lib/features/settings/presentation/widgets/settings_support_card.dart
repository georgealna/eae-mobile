import 'package:eae_mobile/core/constants/colors.dart';
import 'package:eae_mobile/core/constants/text_styles.dart';
import 'package:eae_mobile/core/helpers/spacing.dart';
import 'package:eae_mobile/features/settings/data/models/settings_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsSupportCard extends StatelessWidget {
  final SettingsSupportData support;

  const SettingsSupportCard({super.key, required this.support});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.primaryColor10,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            support.title,
            style: AppTextStyles.font17DarkGreySemiBold.copyWith(
              color: AppColors.neutralColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(10),
          Text(
            support.description,
            style: AppTextStyles.font12DarkGreyRegular.copyWith(
              color: AppColors.neutralColor6,
              height: 1.5,
            ),
          ),
          verticalSpace(16),
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: Material(
              color: AppColors.neutralColor,
              borderRadius: BorderRadius.circular(10.r),
              child: InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.support_agent_rounded,
                        size: 18.sp,
                        color: AppColors.primaryColor9,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        support.actionLabel,
                        style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                          color: AppColors.primaryColor9,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
