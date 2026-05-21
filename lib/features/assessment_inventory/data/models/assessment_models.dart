class AssessmentInventoryViewData {
  final ActiveAssessment primaryActiveAssessment;
  final ActiveAssessment secondaryActiveAssessment;
  final UpcomingAssessment upcomingAssessment;
  final AssessmentMetrics metrics;
  final List<AssessmentHistoryItem> history;

  const AssessmentInventoryViewData({
    required this.primaryActiveAssessment,
    required this.secondaryActiveAssessment,
    required this.upcomingAssessment,
    required this.metrics,
    required this.history,
  });
}

class ActiveAssessment {
  final String title;
  final String statusLabel;
  final int durationMinutes;
  final double progress;
  final int proctorsAvailable;
  final String actionLabel;
  final bool isPrimaryAction;
  final String? expiresInLabel;

  const ActiveAssessment({
    required this.title,
    required this.statusLabel,
    required this.durationMinutes,
    required this.progress,
    required this.proctorsAvailable,
    required this.actionLabel,
    required this.isPrimaryAction,
    this.expiresInLabel,
  });
}

class UpcomingAssessment {
  final String title;
  final String scheduledLabel;
  final String actionLabel;

  const UpcomingAssessment({
    required this.title,
    required this.scheduledLabel,
    required this.actionLabel,
  });
}

class AssessmentMetrics {
  final int averageScore;
  final int completionRate;

  const AssessmentMetrics({
    required this.averageScore,
    required this.completionRate,
  });
}

class AssessmentHistoryItem {
  final String name;
  final String version;
  final String completedDate;
  final String duration;

  const AssessmentHistoryItem({
    required this.name,
    required this.version,
    required this.completedDate,
    required this.duration,
  });
}

class AvailableAssessment {
  final String title;
  final String badgeLabel;
  final String durationLabel;
  final String description;
  final String difficultyLabel;
  final String sectionsLabel;

  const AvailableAssessment({
    required this.title,
    required this.badgeLabel,
    required this.durationLabel,
    required this.description,
    required this.difficultyLabel,
    required this.sectionsLabel,
  });
}
