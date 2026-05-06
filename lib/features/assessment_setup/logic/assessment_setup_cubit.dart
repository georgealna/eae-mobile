import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/app_strings.dart';
import '../data/models/assessment_setup_models.dart';

part 'assessment_setup_state.dart';
part 'assessment_setup_cubit.freezed.dart';

class AssessmentSetupCubit extends Cubit<AssessmentSetupState> {
  AssessmentSetupCubit() : super(const AssessmentSetupState.loading()) {
    _loadMockData();
  }

  void _loadMockData() {
    final viewData = AssessmentSetupViewData(
      badgeLabel: AppStrings.levelCertifiedExecutive,
      title: AppStrings.strategicFinancialRiskAnalysis,
      durationLabel: '120 ${AppStrings.minutes}',
      description: AppStrings.assessmentOverviewDescription,
      modulesValue: '08 ${AppStrings.sectionsLabel}',
      difficultyValue: AppStrings.difficultyAdvanced,
      passMarkValue: '85% ${AppStrings.aggregateLabel}',
      systemRequirements: const [
        AssessmentSetupItem(
          iconType: AssessmentSetupIconType.browser,
          title: 'Chrome v98+ or Firefox v102+',
          subtitle: 'Browser must support hardware acceleration',
        ),
        AssessmentSetupItem(
          iconType: AssessmentSetupIconType.network,
          title: 'Stable 10Mbps Connection',
          subtitle: 'Ethernet recommended over wireless',
        ),
      ],
      hardwareSetup: const [
        AssessmentSetupItem(
          iconType: AssessmentSetupIconType.webcam,
          title: 'HD Webcam Enabled',
          subtitle: 'Must be positioned at eye-level',
        ),
        AssessmentSetupItem(
          iconType: AssessmentSetupIconType.microphone,
          title: 'Active Microphone',
          subtitle: 'Noise cancellation software allowed',
        ),
      ],
      preparingTitle: AppStrings.preparingYourSpace,
      preparingDescription: AppStrings.preparingYourSpaceDescription,
      securityLabel: AppStrings.securityProtocolLabel,
      securityTitle: AppStrings.strictProctoredSession,
      securityItems: const [
        AssessmentSecurityItem(
          title: 'No Screenshots Allowed',
          description: 'Session will terminate immediately upon capture',
        ),
        AssessmentSecurityItem(
          title: 'Dual-Monitor Ban',
          description: 'Only one active display is permitted during the exam',
        ),
        AssessmentSecurityItem(
          title: 'Continuous Biometrics',
          description:
              'AI-driven gaze detection and identity verification active',
        ),
      ],
      precheckLabel: AppStrings.readyForDeployment,
      precheckStatusLabel: AppStrings.precheckStatus,
      precheckStatus: AppStrings.readyStatus,
      acknowledgeText: AppStrings.acknowledgeSetup,
      actionLabel: AppStrings.acknowledgeBeginSetup,
      timerNotice: AppStrings.timerCannotBePaused,
      supportLabel: AppStrings.technicalSupport,
      supportAction: AppStrings.liveChat,
    );

    emit(AssessmentSetupState.ready(viewData: viewData));
  }

  void toggleAcknowledged() {
    state.maybeWhen(
      ready: (viewData, isAcknowledged) => emit(
        AssessmentSetupState.ready(
          viewData: viewData,
          isAcknowledged: !isAcknowledged,
        ),
      ),
      orElse: () {},
    );
  }
}
