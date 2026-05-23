import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/public_widgets/loading_widget.dart';
import '../../logic/assessment_inventory_cubit.dart';
import '../widgets/assessment_active_section.dart';
import '../widgets/assessment_header.dart';
import '../widgets/assessment_history_section.dart';
import '../widgets/assessment_metrics_card.dart';
import '../widgets/assessment_upcoming_card.dart';

class AssessmentInventoryScreen extends StatelessWidget {
  const AssessmentInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AssessmentInventoryView();
  }
}

class _AssessmentInventoryView extends StatelessWidget {
  const _AssessmentInventoryView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AssessmentInventoryCubit, AssessmentInventoryState>(
        builder: (context, state) {
          final viewData = state.maybeWhen(
            ready: (viewData) => viewData,
            orElse: () => null,
          );

          if (viewData == null) {
            return const LoadingWidget();
          }

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AssessmentHeader(),
                verticalSpace(20),
                Text(
                  AppStrings.assessmentInventoryTitle,
                  style: AppTextStyles.font32DarkGreyMedium.copyWith(
                    color: AppColors.primaryColor9,
                    fontWeight: FontWeight.w700,
                    height: 1.05,
                  ),
                ),
                verticalSpace(10),
                Text(
                  AppStrings.assessmentInventorySubtitle,
                  style: AppTextStyles.font14DarkGreyRegular.copyWith(
                    color: AppColors.tertiaryColor6,
                    height: 1.5,
                  ),
                ),
                verticalSpace(24),
                AssessmentActiveSection(
                  primaryAssessment: viewData.primaryActiveAssessment,
                  secondaryAssessment: viewData.secondaryActiveAssessment,
                ),
                verticalSpace(20),
                AssessmentUpcomingCard(assessment: viewData.upcomingAssessment),
                verticalSpace(20),
                AssessmentMetricsCard(metrics: viewData.metrics),
                verticalSpace(20),
                AssessmentHistorySection(items: viewData.history),
                verticalSpace(24),
              ],
            ),
          );
        },
      ),
    );
  }
}
