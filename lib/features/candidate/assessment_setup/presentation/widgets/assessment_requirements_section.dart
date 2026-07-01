import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/assessment_setup_models.dart';

class AssessmentRequirementsSection extends StatelessWidget {
  final String title;
  final List<AssessmentSetupItem> items;

  const AssessmentRequirementsSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
          verticalSpace(12),
          ...items.map((item) => _RequirementTile(item: item)),
        ],
      ),
    );
  }
}

class _RequirementTile extends StatelessWidget {
  final AssessmentSetupItem item;

  const _RequirementTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Row(
        children: [
          Icon(
            _iconForType(item.iconType),
            size: 20.sp,
            color: AppColors.secondaryColor7,
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                verticalSpace(2),
                Text(
                  item.subtitle,
                  style: AppTextStyles.font11DarkGreyLight.copyWith(
                    color: AppColors.tertiaryColor6,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.check_circle,
            size: 18.sp,
            color: AppColors.secondaryColor7,
          ),
        ],
      ),
    );
  }

  IconData _iconForType(AssessmentSetupIconType type) {
    switch (type) {
      case AssessmentSetupIconType.browser:
        return Icons.public_outlined;
      case AssessmentSetupIconType.network:
        return Icons.wifi_outlined;
      case AssessmentSetupIconType.webcam:
        return Icons.videocam_outlined;
      case AssessmentSetupIconType.microphone:
        return Icons.mic_none_outlined;
      case AssessmentSetupIconType.security:
        return Icons.security_outlined;
    }
  }
}
