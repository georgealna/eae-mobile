import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../data/models/forensics_checkpoint_models.dart';

part 'forensics_checkpoint_state.dart';
part 'forensics_checkpoint_cubit.freezed.dart';

class ForensicsCheckpointCubit extends Cubit<ForensicsCheckpointState> {
  ForensicsCheckpointCubit() : super(const ForensicsCheckpointState.loading()) {
    _loadMockData();
  }

  void _loadMockData() {
    final viewData = ForensicsCheckpointViewData(
      protocolLabel: AppStrings.securityProtocol,
      title: AppStrings.forensicsCheckpointTitle,
      subtitle: AppStrings.forensicsCheckpointSubtitle,
      heroTitle: AppStrings.hardwareIntegrity,
      heroStatus: AppStrings.validated,
      heroStep: '01',
      checksCompleted: 4,
      checksTotal: 4,
      checks: const [
        ForensicsCheckItem(
          title: 'GPS Geofence',
          subtitle: 'Authorized Institutional Zone',
          statusLabel: 'Validated',
          isValidated: true,
        ),
        ForensicsCheckItem(
          title: 'Camera Access',
          subtitle: 'Biometric identity verification active',
          statusLabel: 'Authorized',
          isValidated: true,
        ),
        ForensicsCheckItem(
          title: 'Microphone Control',
          subtitle: 'Ambient fraud detection enabled',
          statusLabel: 'Authorized',
          isValidated: true,
        ),
        ForensicsCheckItem(
          title: 'Root/Jailbreak Check',
          subtitle: 'OS Kernel integrity verification',
          statusLabel: 'Passed',
          isValidated: true,
        ),
      ],
      sessionNotice: AppStrings.sessionRecordedNotice,
      actionLabel: AppStrings.unlockAssessment,
      deviceId: '#AF-9928-XX-221',
      auditLatency: '14ms',
    );

    emit(ForensicsCheckpointState.ready(viewData: viewData));
  }
}
