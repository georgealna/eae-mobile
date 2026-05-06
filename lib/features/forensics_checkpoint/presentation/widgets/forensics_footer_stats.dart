import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class ForensicsFooterStats extends StatelessWidget {
  final String deviceId;
  final String auditLatency;

  const ForensicsFooterStats({
    super.key,
    required this.deviceId,
    required this.auditLatency,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatCard(label: AppStrings.deviceId, value: deviceId),
        ),
        horizontalSpace(12),
        Expanded(
          child: _StatCard(label: AppStrings.auditLatency, value: auditLatency),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;

  const _StatCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: AppTextStyles.font10DarkGreyRegular.copyWith(
              color: AppColors.tertiaryColor6,
              letterSpacing: 1.2,
            ),
          ),
          verticalSpace(6),
          Text(
            value,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ],
      ),
    );
  }
}
