import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/analytics_models.dart';

part 'analytics_cubit.freezed.dart';
part 'analytics_state.dart';

class AnalyticsCubit extends Cubit<AnalyticsState> {
  AnalyticsCubit() : super(const AnalyticsState.loading()) {
    _loadMockData();
  }

  void _loadMockData() {
    emit(
      AnalyticsState.ready(
        viewData: const AnalyticsViewData(
          title: 'Candidate Performance\nAnalytics',
          subtitle:
              'Institutional Assessment Profile for Candidate\nID: 8829-XQ',
          competencyTitle: 'COMPETENCY\nDOMAIN MATRIX',
          secureProfileLabel: 'SECURE\nPROFILE',
          radarLabelTop: 'RISK MGT',
          radarLabelBottom: 'ETHICAL STDS',
          chartValues: [0.92, 0.88, 0.95, 0.42, 0.68, 0.74],
          metrics: [
            AnalyticsMetric(
              label: 'Risk Management',
              value: 0.92,
              isAlert: false,
            ),
            AnalyticsMetric(
              label: 'Compliance & Legal',
              value: 0.88,
              isAlert: false,
            ),
            AnalyticsMetric(
              label: 'Ethical Standards',
              value: 0.95,
              isAlert: false,
            ),
            AnalyticsMetric(
              label: 'Strategic Oversight',
              value: 0.42,
              isAlert: true,
            ),
          ],
          benchmarkingTitle: 'Historical Benchmarking',
          benchmarkingSubtitle: 'Comparison against cohort mean',
          benchmarks: [
            AnalyticsBenchmark(label: 'Decision Speed', value: '+12.4%'),
            AnalyticsBenchmark(label: 'Accuracy Rate', value: '+5.2%'),
            AnalyticsBenchmark(label: 'Risk Mitigation Score', value: 'Top 3%'),
          ],
          recommendationTitle: 'AI Recommendation',
          recommendationSubtitle: 'Predictive career pathing',
          recommendationBody:
              'Candidate exhibits high variance in Strategic Oversight but excels in Risk Management. Recommend placement in Internal Audit or Compliance lead roles.',
          recommendationActionLabel: 'VIEW FULL REPORT →',
          credentialsTitle: 'Earned Credentials',
          exportCertificateLabel: 'EXPORT CERTIFICATE',
          credentials: [
            AnalyticsCredential(
              title: 'COMPLIANCE EXPERT',
              subtitle: 'Verified Nov 2023',
              icon: AnalyticsCredentialIcon.gavel,
            ),
            AnalyticsCredential(
              title: 'DATA INTEGRIST',
              subtitle: 'Verified Jan 2024',
              icon: AnalyticsCredentialIcon.chart,
            ),
            AnalyticsCredential(
              title: 'ETHICAL GUARD',
              subtitle: 'Verified Feb 2024',
              icon: AnalyticsCredentialIcon.lock,
            ),
          ],
          assessmentStatusTitle: 'ASSESSMENT STATUS',
          sessionLabel: 'Active Session',
          syncedLabel: 'SYNCED',
          statusProgress: 0.96,
          statusNotice:
              'The competency profile is generated from 14 distinct assessment modules and peer-reviewed benchmark data.',
        ),
      ),
    );
  }
}
