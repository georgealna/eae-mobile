part of 'assessment_inventory_details_cubit.dart';

@freezed
class AssessmentInventoryDetailsState with _$AssessmentInventoryDetailsState {
  const factory AssessmentInventoryDetailsState.loading() = _Loading;
  const factory AssessmentInventoryDetailsState.success(
    AssessmentInventoryDetailsResponse response,
  ) = Success;
  const factory AssessmentInventoryDetailsState.error({required String error}) =
      Error;
}
