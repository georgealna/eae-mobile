import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AssessmentSetupFooter extends StatelessWidget {
  final String timerNotice;
  final String supportLabel;
  final String supportAction;

  const AssessmentSetupFooter({
    super.key,
    required this.timerNotice,
    required this.supportLabel,
    required this.supportAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          timerNotice,
          style: AppTextStyles.font11DarkGreyLight.copyWith(
            color: AppColors.tertiaryColor6,
          ),
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.support_agent_outlined,
                  size: 16.sp,
                  color: AppColors.tertiaryColor6,
                ),
                horizontalSpace(6),
                Text(
                  supportLabel,
                  style: AppTextStyles.font11DarkGreyLight.copyWith(
                    color: AppColors.tertiaryColor6,
                  ),
                ),
              ],
            ),
            Text(
              supportAction.toUpperCase(),
              style: AppTextStyles.font11DarkGreyLight.copyWith(
                color: AppColors.secondaryColor7,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
