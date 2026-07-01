import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';

class UsersManagementSheetScaffold extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget child;

  const UsersManagementSheetScaffold({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 18.h,
        bottom: MediaQuery.viewInsetsOf(context).bottom + 24.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 38.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor3,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            verticalSpace(18),
            Text(
              title,
              style: AppTextStyles.font20DarkGreyBold.copyWith(
                color: AppColors.primaryColor9,
              ),
            ),
            verticalSpace(6),
            Text(
              subtitle,
              style: AppTextStyles.font12DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor6,
                height: 1.45,
              ),
            ),
            verticalSpace(18),
            child,
          ],
        ),
      ),
    );
  }
}
