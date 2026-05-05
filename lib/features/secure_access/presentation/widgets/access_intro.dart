import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AccessIntro extends StatelessWidget {
  const AccessIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.enterpriseAssessmentTitle,
          style: AppTextStyles.font10DarkGreyThin.copyWith(
            color: AppColors.secondaryColor7,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
        verticalSpace(8),
        Text(
          AppStrings.secureAccess,
          style: AppTextStyles.font32DarkGreyMedium.copyWith(
            color: AppColors.primaryColor9,
            fontWeight: FontWeight.w800,
          ),
        ),
        verticalSpace(8),
        Text(
          AppStrings.secureAccessDescription,
          style: AppTextStyles.font14DarkGreyRegular.copyWith(
            color: AppColors.tertiaryColor6,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
