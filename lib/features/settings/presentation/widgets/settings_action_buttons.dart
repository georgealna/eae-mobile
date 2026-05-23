import 'package:eae_mobile/core/constants/colors.dart';
import 'package:eae_mobile/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsActionButtons extends StatelessWidget {
  final String cancelLabel;
  final String saveLabel;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  const SettingsActionButtons({
    super.key,
    required this.cancelLabel,
    required this.saveLabel,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 54.h,
            child: OutlinedButton(
              onPressed: onCancel,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.tertiaryColor2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                backgroundColor: AppColors.neutralColor,
              ),
              child: Text(
                cancelLabel,
                textAlign: TextAlign.center,
                style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                  color: AppColors.primaryColor9,
                  fontSize: 13.sp,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: SizedBox(
            height: 54.h,
            child: ElevatedButton(
              onPressed: onSave,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor10,
                foregroundColor: AppColors.neutralColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                elevation: 0,
              ),
              child: Text(
                saveLabel,
                textAlign: TextAlign.center,
                style: AppTextStyles.font12WhiteSemiBold.copyWith(
                  fontSize: 13.sp,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
