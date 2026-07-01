import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/extentions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../data/models/assessment_models.dart';
import 'assessment_active_card.dart';

class AssessmentActiveSection extends StatelessWidget {
  final ActiveAssessment assessment;

  const AssessmentActiveSection({super.key, required this.assessment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.assignment_outlined,
              size: 20.sp,
              color: AppColors.secondaryColor7,
            ),
            horizontalSpace(8),
            Text(
              AppStrings.activeAssessments.toUpperCase(),
              style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                color: AppColors.tertiaryColor7,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        AssessmentActiveCard(
          assessment: assessment,
          onActionTap: () =>
              context.pushNamed(Routes.assessmentSelectionScreen),
        ),
      ],
    );
  }
}
