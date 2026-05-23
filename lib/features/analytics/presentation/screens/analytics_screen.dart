import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/extentions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../features/bottom_nav/presentation/widgets/bottom_nav_bar.dart';
import '../../logic/analytics_cubit.dart';
import '../widgets/analytics_ai_recommendation_card.dart';
import '../widgets/analytics_assessment_status_card.dart';
import '../widgets/analytics_benchmarking_card.dart';
import '../widgets/analytics_competency_card.dart';
import '../widgets/analytics_credentials_card.dart';
import '../widgets/analytics_top_bar.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AnalyticsView();
  }
}

class _AnalyticsView extends StatelessWidget {
  const _AnalyticsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      bottomNavigationBar: EaeBottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            context.pushReplacementNamed(Routes.assessmentInventoryScreen);
          }
        },
        items: const [
          EaeBottomNavItem(label: 'DASHBOARD', icon: Icons.dashboard_outlined),
          EaeBottomNavItem(label: 'ANALYTICS', icon: Icons.analytics_outlined),
          EaeBottomNavItem(label: 'SETTINGS', icon: Icons.settings_outlined),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
          builder: (context, state) {
            final viewData = state.maybeWhen(
              ready: (viewData) => viewData,
              orElse: () => null,
            );

            if (viewData == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AnalyticsTopBar(),
                  verticalSpace(14),
                  Text(
                    viewData.title,
                    style: AppTextStyles.font32DarkGreyMedium.copyWith(
                      color: AppColors.primaryColor9,
                      fontWeight: FontWeight.w800,
                      height: 1.02,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    viewData.subtitle,
                    style: AppTextStyles.font14DarkGreyRegular.copyWith(
                      color: AppColors.tertiaryColor6,
                      height: 1.5,
                    ),
                  ),
                  verticalSpace(18),
                  AnalyticsCompetencyCard(
                    title: viewData.competencyTitle,
                    secureProfileLabel: viewData.secureProfileLabel,
                    radarLabelTop: viewData.radarLabelTop,
                    radarLabelBottom: viewData.radarLabelBottom,
                    metrics: viewData.metrics,
                    chartValues: viewData.chartValues,
                  ),
                  verticalSpace(20),
                  AnalyticsBenchmarkingCard(
                    title: viewData.benchmarkingTitle,
                    subtitle: viewData.benchmarkingSubtitle,
                    benchmarks: viewData.benchmarks,
                  ),
                  verticalSpace(20),
                  AnalyticsAiRecommendationCard(
                    title: viewData.recommendationTitle,
                    subtitle: viewData.recommendationSubtitle,
                    body: viewData.recommendationBody,
                    actionLabel: viewData.recommendationActionLabel,
                  ),
                  verticalSpace(20),
                  AnalyticsCredentialsCard(
                    title: viewData.credentialsTitle,
                    exportLabel: viewData.exportCertificateLabel,
                    credentials: viewData.credentials,
                  ),
                  verticalSpace(20),
                  AnalyticsAssessmentStatusCard(
                    title: viewData.assessmentStatusTitle,
                    sessionLabel: viewData.sessionLabel,
                    syncedLabel: viewData.syncedLabel,
                    progress: viewData.statusProgress,
                    notice: viewData.statusNotice,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
