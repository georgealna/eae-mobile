import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AccessHeader extends StatelessWidget {
  const AccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: AppColors.primaryColor1,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: AppColors.primaryColor5),
          ),
          child: Icon(
            Icons.verified_user_outlined,
            color: AppColors.primaryColor,
            size: 20.sp,
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: Text(
            'Enterprise Assessment',
            style: AppTextStyles.font16DarkGreyBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ),
        Icon(Icons.sync_alt, color: AppColors.tertiaryColor6, size: 20.sp),
      ],
    );
  }
}
