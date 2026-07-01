import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class AssessmentPrecheckCard extends StatelessWidget {
  final String label;
  final String statusLabel;
  final String status;
  final bool isAcknowledged;
  final String acknowledgeText;
  final ValueChanged<bool> onAcknowledgedChanged;

  const AssessmentPrecheckCard({
    super.key,
    required this.label,
    required this.statusLabel,
    required this.status,
    required this.isAcknowledged,
    required this.acknowledgeText,
    required this.onAcknowledgedChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
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
              label.toUpperCase(),
              style: AppTextStyles.font10DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor6,
                letterSpacing: 1.3,
              ),
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  statusLabel,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                Text(
                  status,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.secondaryColor7,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: LinearProgressIndicator(
                value: 1,
                minHeight: 6.h,
                backgroundColor: AppColors.tertiaryColor2,
                valueColor: AlwaysStoppedAnimation(AppColors.secondaryColor),
              ),
            ),
            verticalSpace(14),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: isAcknowledged,
                  onChanged: (value) => onAcknowledgedChanged(value ?? false),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  activeColor: AppColors.primaryColor10,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      acknowledgeText,
                      style: AppTextStyles.font11DarkGreyLight.copyWith(
                        color: AppColors.tertiaryColor6,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
