part of 'assessment_inventory_cubit.dart';

@freezed
class AssessmentInventoryState with _$AssessmentInventoryState {
  const factory AssessmentInventoryState.loading() = _Loading;

  const factory AssessmentInventoryState.ready({
    required AssessmentInventoryViewData viewData,
  }) = _Ready;
}
