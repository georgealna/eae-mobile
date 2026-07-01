class ForensicsCheckpointViewData {
  final String protocolLabel;
  final String title;
  final String subtitle;
  final String heroTitle;
  final String heroStatus;
  final String heroStep;
  final int checksCompleted;
  final int checksTotal;
  final List<ForensicsCheckItem> checks;
  final String sessionNotice;
  final String actionLabel;
  final String deviceId;
  final String auditLatency;

  const ForensicsCheckpointViewData({
    required this.protocolLabel,
    required this.title,
    required this.subtitle,
    required this.heroTitle,
    required this.heroStatus,
    required this.heroStep,
    required this.checksCompleted,
    required this.checksTotal,
    required this.checks,
    required this.sessionNotice,
    required this.actionLabel,
    required this.deviceId,
    required this.auditLatency,
  });
}

class ForensicsCheckItem {
  final String title;
  final String subtitle;
  final String statusLabel;
  final bool isValidated;

  const ForensicsCheckItem({
    required this.title,
    required this.subtitle,
    required this.statusLabel,
    required this.isValidated,
  });
}
