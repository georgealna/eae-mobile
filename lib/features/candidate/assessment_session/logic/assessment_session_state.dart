part of 'assessment_session_cubit.dart';

@freezed
abstract class AssessmentSessionState with _$AssessmentSessionState {
  const factory AssessmentSessionState.loading() = _Loading;

  const factory AssessmentSessionState.ready({
    required AssessmentSessionViewData viewData,
  }) = _Ready;
}
