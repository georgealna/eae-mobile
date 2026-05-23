import 'package:flutter/material.dart';

class AnalyticsViewData {
  final String title;
  final String subtitle;
  final String competencyTitle;
  final String secureProfileLabel;
  final String radarLabelTop;
  final String radarLabelBottom;
  final List<double> chartValues;
  final List<AnalyticsMetric> metrics;
  final String benchmarkingTitle;
  final String benchmarkingSubtitle;
  final List<AnalyticsBenchmark> benchmarks;
  final String recommendationTitle;
  final String recommendationSubtitle;
  final String recommendationBody;
  final String recommendationActionLabel;
  final String credentialsTitle;
  final String exportCertificateLabel;
  final List<AnalyticsCredential> credentials;
  final String assessmentStatusTitle;
  final String sessionLabel;
  final String syncedLabel;
  final double statusProgress;
  final String statusNotice;

  const AnalyticsViewData({
    required this.title,
    required this.subtitle,
    required this.competencyTitle,
    required this.secureProfileLabel,
    required this.radarLabelTop,
    required this.radarLabelBottom,
    required this.chartValues,
    required this.metrics,
    required this.benchmarkingTitle,
    required this.benchmarkingSubtitle,
    required this.benchmarks,
    required this.recommendationTitle,
    required this.recommendationSubtitle,
    required this.recommendationBody,
    required this.recommendationActionLabel,
    required this.credentialsTitle,
    required this.exportCertificateLabel,
    required this.credentials,
    required this.assessmentStatusTitle,
    required this.sessionLabel,
    required this.syncedLabel,
    required this.statusProgress,
    required this.statusNotice,
  });
}

class AnalyticsMetric {
  final String label;
  final double value;
  final bool isAlert;

  const AnalyticsMetric({
    required this.label,
    required this.value,
    required this.isAlert,
  });
}

class AnalyticsBenchmark {
  final String label;
  final String value;

  const AnalyticsBenchmark({required this.label, required this.value});
}

enum AnalyticsCredentialIcon { gavel, chart, lock }

class AnalyticsCredential {
  final String title;
  final String subtitle;
  final AnalyticsCredentialIcon icon;

  const AnalyticsCredential({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  IconData get iconData {
    switch (icon) {
      case AnalyticsCredentialIcon.gavel:
        return Icons.gavel_rounded;
      case AnalyticsCredentialIcon.chart:
        return Icons.bar_chart_rounded;
      case AnalyticsCredentialIcon.lock:
        return Icons.lock_rounded;
    }
  }
}
