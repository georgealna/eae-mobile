import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/app_strings.dart';
import '../data/models/assessment_models.dart';

part 'assessment_inventory_state.dart';
part 'assessment_inventory_cubit.freezed.dart';

class AssessmentInventoryCubit extends Cubit<AssessmentInventoryState> {
  AssessmentInventoryCubit() : super(const AssessmentInventoryState.loading()) {
    _loadMockData();
  }

  void _loadMockData() {
    final viewData = AssessmentInventoryViewData(
      primaryActiveAssessment: ActiveAssessment(
        title: 'Financial Risk Certification',
        statusLabel: AppStrings.readyToBegin,
        durationMinutes: 120,
        progress: 0.34,
        proctorsAvailable: 12,
        actionLabel: AppStrings.startAssessment,
        isPrimaryAction: true,
      ),
      secondaryActiveAssessment: ActiveAssessment(
        title: 'Anti-Money Laundering Protocol',
        statusLabel: AppStrings.resume,
        durationMinutes: 45,
        progress: 0.55,
        proctorsAvailable: 0,
        actionLabel: AppStrings.resume,
        isPrimaryAction: false,
        expiresInLabel: AppStrings.expiresInDays(4),
      ),
      upcomingAssessment: UpcomingAssessment(
        title: 'Quarterly Compliance',
        scheduledLabel: AppStrings.scheduledFor('Oct 15th, 09:00 AM'),
        actionLabel: AppStrings.addToCalendar,
      ),
      metrics: const AssessmentMetrics(averageScore: 94, completionRate: 80),
      history: const [
        AssessmentHistoryItem(
          name: 'Ethical Trading Standards',
          version: 'Ver. 2.4.0',
          completedDate: 'Sept 12, 2023',
          duration: '58m 12s',
        ),
        AssessmentHistoryItem(
          name: 'Global Markets Overview',
          version: 'Ver. 1.1.2',
          completedDate: 'Aug 28, 2023',
          duration: '90m 04s',
        ),
      ],
    );

    emit(AssessmentInventoryState.ready(viewData: viewData));
  }
}
