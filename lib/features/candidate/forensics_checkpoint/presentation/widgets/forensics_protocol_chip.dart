import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';

class ForensicsProtocolChip extends StatelessWidget {
  final String label;

  const ForensicsProtocolChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor2,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTextStyles.font10DarkGreyRegular.copyWith(
          color: AppColors.secondaryColor7,
          letterSpacing: 1.4,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
