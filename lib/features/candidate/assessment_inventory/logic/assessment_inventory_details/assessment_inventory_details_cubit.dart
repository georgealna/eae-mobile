import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/assessment_inventory_details/assessment_inventory_details_response.dart';
import '../../data/repos/assessment_inventory_repo.dart';

part 'assessment_inventory_details_state.dart';
part 'assessment_inventory_details_cubit.freezed.dart';

class AssessmentInventoryDetailsCubit
    extends Cubit<AssessmentInventoryDetailsState> {
  final AssessmentInventoryRepo assessmentInventoryRepo;

  AssessmentInventoryDetailsCubit({required this.assessmentInventoryRepo})
    : super(const AssessmentInventoryDetailsState.loading());

  Future<void> getAssessmentInventoryDetails(String examId) async {
    emit(const AssessmentInventoryDetailsState.loading());

    try {
      final response = await assessmentInventoryRepo.assessmentInventoryDetails(
        examId,
      );
      emit(AssessmentInventoryDetailsState.success(response));
    } on NetworkExceptions catch (e) {
      emit(
        AssessmentInventoryDetailsState.error(
          error: NetworkExceptions.getErrorMessage(e),
        ),
      );
    } catch (e) {
      emit(
        const AssessmentInventoryDetailsState.error(
          error: 'Failed to load assessment details',
        ),
      );
    }
  }
}
