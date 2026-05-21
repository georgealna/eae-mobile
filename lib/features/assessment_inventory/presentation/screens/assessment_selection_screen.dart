import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/extentions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../features/bottom_nav/presentation/widgets/bottom_nav_bar.dart';
import '../../data/models/assessment_models.dart';
import '../widgets/assessment_header.dart';

class AssessmentSelectionScreen extends StatelessWidget {
  const AssessmentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AssessmentSelectionView();
  }
}

class _AssessmentSelectionView extends StatelessWidget {
  const _AssessmentSelectionView();

  static const List<AvailableAssessment> _availableAssessments = [
    AvailableAssessment(
      title: 'Financial Risk Certification',
      badgeLabel: 'Ready',
      durationLabel: '120 Minutes',
      description:
          'High-intensity financial oversight assessment with layered risk controls.',
      difficultyLabel: 'Advanced',
      sectionsLabel: '08 Sections',
    ),
    AvailableAssessment(
      title: 'Anti-Money Laundering Protocol',
      badgeLabel: 'Ready',
      durationLabel: '45 Minutes',
      description:
          'Focused compliance review for suspicious activity detection and escalation.',
      difficultyLabel: 'Intermediate',
      sectionsLabel: '05 Sections',
    ),
    AvailableAssessment(
      title: 'Global Markets Overview',
      badgeLabel: 'Ready',
      durationLabel: '90 Minutes',
      description:
          'Broad market intelligence assessment across trading zones and exposures.',
      difficultyLabel: 'Advanced',
      sectionsLabel: '06 Sections',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      bottomNavigationBar: EaeBottomNavBar(
        currentIndex: 0,
        onTap: (_) {},
        items: const [
          EaeBottomNavItem(label: 'DASHBOARD', icon: Icons.dashboard_outlined),
          EaeBottomNavItem(label: 'ANALYTICS', icon: Icons.analytics_outlined),
          EaeBottomNavItem(label: 'SETTINGS', icon: Icons.settings_outlined),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AssessmentHeader(),
              verticalSpace(18),
              Text(
                AppStrings.assessmentSelectionTitle,
                style: AppTextStyles.font32DarkGreyMedium.copyWith(
                  color: AppColors.primaryColor9,
                  fontWeight: FontWeight.w700,
                  height: 1.05,
                ),
              ),
              verticalSpace(10),
              Text(
                AppStrings.assessmentSelectionSubtitle,
                style: AppTextStyles.font14DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor6,
                  height: 1.5,
                ),
              ),
              verticalSpace(24),
              ...List.generate(_availableAssessments.length, (index) {
                final assessment = _availableAssessments[index];

                return Padding(
                  padding: EdgeInsets.only(bottom: index == 2 ? 0 : 16.h),
                  child: _AssessmentChoiceCard(
                    assessment: assessment,
                    onTap: () =>
                        context.pushNamed(Routes.forensicsCheckpointScreen),
                  ),
                );
              }),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}

class _AssessmentChoiceCard extends StatelessWidget {
  final AvailableAssessment assessment;
  final VoidCallback onTap;

  const _AssessmentChoiceCard({required this.assessment, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.neutralColor,
      borderRadius: BorderRadius.circular(18.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18.r),
        child: Container(
          padding: EdgeInsets.all(18.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: AppColors.tertiaryColor2),
            boxShadow: [
              BoxShadow(
                color: AppColors.tertiaryColor2.withValues(alpha: 0.25),
                blurRadius: 22.r,
                offset: Offset(0, 10.h),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor2,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      assessment.badgeLabel.toUpperCase(),
                      style: AppTextStyles.font10DarkGreyRegular.copyWith(
                        color: AppColors.secondaryColor7,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14.sp,
                    color: AppColors.tertiaryColor6,
                  ),
                ],
              ),
              verticalSpace(12),
              Text(
                assessment.title,
                style: AppTextStyles.font20DarkGreyBold.copyWith(
                  color: AppColors.primaryColor9,
                  height: 1.2,
                ),
              ),
              verticalSpace(10),
              Text(
                assessment.description,
                style: AppTextStyles.font12DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor6,
                  height: 1.55,
                ),
              ),
              verticalSpace(14),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: [
                  _MetaChip(
                    icon: Icons.timer_outlined,
                    label: assessment.durationLabel,
                  ),
                  _MetaChip(
                    icon: Icons.grid_view_rounded,
                    label: assessment.sectionsLabel,
                  ),
                  _MetaChip(
                    icon: Icons.shield_outlined,
                    label: assessment.difficultyLabel,
                  ),
                ],
              ),
              verticalSpace(16),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: Material(
                  color: AppColors.primaryColor10,
                  borderRadius: BorderRadius.circular(12.r),
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(12.r),
                    child: Center(
                      child: Text(
                        AppStrings.startAssessment.toUpperCase(),
                        style: AppTextStyles.font12WhiteSemiBold.copyWith(
                          letterSpacing: 0.8,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _MetaChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor5,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.primaryColor6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.sp, color: AppColors.primaryColor9),
          SizedBox(width: 6.w),
          Text(
            label,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ],
      ),
    );
  }
}
