part of 'assessment_setup_cubit.dart';

@freezed
class AssessmentSetupState with _$AssessmentSetupState {
  const factory AssessmentSetupState.loading() = _Loading;

  const factory AssessmentSetupState.ready({
    required AssessmentSetupViewData viewData,
    @Default(false) bool isAcknowledged,
  }) = _Ready;
}
